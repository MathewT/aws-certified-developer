require 'net/http'
require 'aws-sdk'
require 'openssl'
require 'nokogiri'


puts "hello, world"

region = 'us-east-1'
s3 = Aws::S3::Resource.new(region: region)

s3.create_bucket(bucket: 'mthomas-labs')


