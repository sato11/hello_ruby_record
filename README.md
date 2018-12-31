# hello_ruby_record
A sample function that runs in Amazon Lambda.

## Requirements
- Ruby: 2.5
- aws-cli
- aws-sam-cli

## Deploy
```
$ sam package --template-file template.yml \
--output-template-file packaged-template.yaml \
--s3-bucket <YourBucketName>
$ sam deploy --template-file packaged-template.yaml \
--stack-name helloRubyRecord \
--capabilities CAPABILITY_IAM
```
