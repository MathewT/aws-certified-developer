require 'net/http'
require 'aws-sdk'
require 'openssl'
require 'nokogiri'


puts "hello, world"

region = 'us-east-1'
s3 = Aws::S3::Resource.new(region: region)


if s3.bucket('mthomas-labs').exists?
  puts "mthomas-labs bucket already exists."
  exit
end

puts "creating bucket mthomas-labs"
s3.create_bucket(bucket: 'mthomas-labs')

