set -x

OUTPUT_DIR=$(pwd)/output

apt update
apt install zip

cd ${OUTPUT_DIR}/libs
zip -r ${OUTPUT_DIR}/code.zip .
rm -rf cd ${OUTPUT_DIR}/libs

cd ${OUTPUT_DIR}/../src
pwd
zip -r9 ${OUTPUT_DIR}/code.zip . -x '__py*'