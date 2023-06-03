import os
from pyspark.sql import SparkSession


spark = SparkSession.builder.appName("splitToChanks").getOrCreate()

for root, dirs, files in os.walk("../data"):
    for filename in files:
        print(filename, 'start')
        df = spark.read.csv(f'../data/{filename}', header=True, inferSchema=True)
        df.write.csv(f"../chanks_data/{filename.replace('.csv', '')}", header=True)
        print(filename, 'end')

