CREATE EXTENSION dblink;

select * from passengers
JOIN
dblink('dbname=remote 
		 port=5432 
		 host=127.0.0.1 
		 user=elias 
		 password=qwerty',
		 'SELECT id, date from vip_users') as remote_data(id integer, date date)
USING (id);