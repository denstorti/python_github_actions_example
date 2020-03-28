
OUTPUT_DIR=$(pwd)/output

apt update
apt install zip

cd ./venv/lib/python3.7/site-packages
pwd

zip -r lib.zip .
mv lib.zip ${OUTPUT_DIR}/

# cd ${OUTPUT_DIR}
# pwd
# zip -r lib.zip ../*