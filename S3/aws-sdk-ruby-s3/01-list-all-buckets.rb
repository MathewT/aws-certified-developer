require 'net/http'
require 'aws-sdk'
require 'openssl'
require 'nokogiri'


puts "hello, world"

region = 'us-east-2'
s3 = Aws::S3::Resource.new(region: region)

s3.buckets.each do |b|
  puts "#{b.name} is in region: #{s3.client.get_bucket_location(bucket: b.name).location_constraint}" 
end

