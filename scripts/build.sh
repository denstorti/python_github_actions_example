set -ex

OUTPUT_DIR=$(pwd)/output
mkdir ${OUTPUT_DIR}

python3 -m venv venv
chmod 777 ./venv/bin/activate
./venv/bin/activate

pip install -r requirements.txt
ls -la ./venv/lib/python3.7/site-packages