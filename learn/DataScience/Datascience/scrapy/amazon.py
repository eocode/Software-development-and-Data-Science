import scrapy
import datetime
from scrapy.crawler import CrawlerProcess

class AmazonSpider(scrapy.Spider):
    name = 'amazon'
    allowed_domains = ['amazon.com.mx']
    start_urls = ['https://www.amazon.com.mx/laptop-Laptops-Computadoras-Componentes-y-Accesorios/s?k=laptop&rh=n%3A10189669011']

    custom_settings = {
        'FEED_URI': './amazon_' + datetime.datetime.today().strftime('%m%d') + '.csv',
        'FEED_FORMAT': 'csv',
        'FEED_EXPORTERS': {
            'csv': 'scrapy.exporters.CsvItemExporter',
        },
        'FEED_EXPORT_ENCODING': 'utf-8',

        'DEPTH_LIMIT' : 10
    }

    def _validate_field(self, field):
        if field is not None:
            return field
        else: 
            None



    def parse(self, response):
        product_links = response.css('h2 .a-link-normal.a-text-normal::attr(href)').getall()
        for link in product_links: 
            yield response.follow(link, callback=self.parse_product)

        next_page = response.css('.a-last a::attr(href)').get()
        if next_page is not None:
            yield response.follow(next_page, callback=self.parse)



    def parse_product(self, response):
        specs = {}

        name = response.css('#productTitle::text').get()
        specs['name'] = self._validate_field(name)
        
        price_current = response.css('#priceblock_ourprice::text').get()
        specs['price_current'] = self._validate_field(price_current)

        price_original = response.css('.a-text-strike::text').get()
        specs['price_original'] = self._validate_field(price_original)

        reviews_number = response.css('#acrCustomerReviewText::text').get()
        specs['reviews_number'] = self._validate_field(reviews_number)
        
        seller = response.css('#bylineInfo::text').get()
        specs['seller'] = self._validate_field(seller)

        score = response.css('#acrPopover .a-icon-alt::text').get()
        specs['score'] = self._validate_field(score)

        rows = response.css('.pdTab table tr')
        if rows is not None:
            for row in rows:
                try:
                    column = row.css('td::text').getall()
                    specs[column[0]] = column[1]
                except IndexError:
                    pass
            del specs['Clasificación en los más vendidos de Amazon']
            del specs['ASIN']
        else:
            pass

        yield specs

if __name__ == '__main__':
    process = CrawlerProcess()
    process.crawl(AmazonSpider)
    process.start()
    
