Simple project to play with GitHub Actions

---
![Builder](https://github.com/denstorti/python_github_actions_example/workflows/Builder/badge.svg?branch=master)

# Requirements
- Docker

# Steps

`make build` - Download dependencies

`make package` - Zip all files needed

`make publish` - publish to AWS S3 bucket
- Create a GitHub secret called `AWS_USER` with your AWS_ACCESS_KEY_ID
- Create a GitHub secret called `AWS_SECRET` with your AWS_SECRET_ACCESS_KEY
- Create bucket and set the environment variable `BUCKET_NAME` in Makefile
