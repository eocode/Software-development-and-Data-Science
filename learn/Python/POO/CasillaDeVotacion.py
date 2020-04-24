class CasillaDeVotacion:
    def __init__(self, identificador, pais):
        self._identificador = identificador
        self._pais = pais
        self._region = None

    @property
    def region(self):
        return self._region

    @region.setter
    def region(self, region):
        print(self._pais)
        if region in self._pais:
            self._region = region
        else:
            raise ValueError(f'La region {region} no es valida en {self._pais}')

casilla = CasillaDeVotacion(123, ['Ciudad de México', 'Morelos'])
print(casilla.region)
casilla.region = 'Morelos'
print(casilla.region)
