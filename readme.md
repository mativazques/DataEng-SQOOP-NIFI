# Ejercicios de SQOOP y APACHE NIFI.Ejercicios:

## SQOOP 

### Consignas

1) Mostrar las tablas de la base de datos northwind.
2) Mostrar los clientes de Argentina.
3) Importar un archivo .parquet que contenga toda la tabla orders. Luego ingestar el archivo a HDFS (carpeta /sqoop/ingest).
4) Importar un archivo .parquet que contenga solo los productos con mas 20 unidades en stock, de la tabla Products . Luego ingestar el archivo a HDFS (carpeta ingest).

### Resultados 

Se puede sintetizar todas las resoluciones a un script de bash para simplificar el proceso, el archivo es [landing_sqoop.sh](landing_sqoop.sh).

El archivo donde se muestra el procedimiento es [Trabajo_SQOOP_NIFI.pdf](Trabajo_SQOOP_NIFI.pdf). 

## APACHE NIFI

### Consignas

1) En el shell de Nifi, crear un script .sh que descargue el archivo starwars.csv al directorio
/home/nifi/ingest (crearlo si es necesario). Ejecutarlo con ./home/nifi/ingest/ingest.sh

https://github.com/fpineyro/homework-0/blob/master/starwars.csv

2) Usando procesos en Nifi:
- tomar el archivo starwars.csv desde el directorio /home/nifi/ingest.
- Mover el archivo starwars.csv desde el directorio anterior, a /home/nifi/bucket (crear el directorio si es necesario)
- Tomar nuevamente el archivo, ahora desde /home/nifi/bucket
- Ingestarlo en HDFS/nifi (si es necesario, crear el directorio con hdfs dfs -mkdir /nifi )

### Resultados

El archivo donde se muestra el procedimiento es [Trabajo_SQOOP_NIFI.pdf](Trabajo_SQOOP_NIFI.pdf). 
