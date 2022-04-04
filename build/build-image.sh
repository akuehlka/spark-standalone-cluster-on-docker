# use Apache binaries to build an image for pyspark
# ./spark-3.2.1-bin-hadoop3.2/bin/docker-image-tool.sh -t latest -p spark-3.2.1-bin-hadoop3.2/kubernetes/dockerfiles/spark/bindings/python/Dockerfile build 
docker build --rm --force-rm \
    -t jupyter/pyspark-notebook:spark-3.2.1 ./pyspark-notebook \
    --build-arg spark_version=3.2.1 \
    --build-arg hadoop_version=3.2 \
    --build-arg spark_checksum=145ADACF189FECF05FBA3A69841D2804DD66546B11D14FC181AC49D89F3CB5E4FECD9B25F56F0AF767155419CD430838FB651992AEB37D3A6F91E7E009D1F9AE \
    --build-arg openjdk_version=8