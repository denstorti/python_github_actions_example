set -x

ls -la output/

aws sts get-caller-identity

aws s3 cp ./output/code.zip s3://python-github-actions-example/$(date +%F.%s)_code.zip