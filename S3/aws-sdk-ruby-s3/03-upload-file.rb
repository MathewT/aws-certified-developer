require 'net/http'
require 'aws-sdk'
require 'openssl'
require 'nokogiri'
require 'digest'


puts "hello, world"


region = 'us-east-1'
s3 = Aws::S3::Resource.new(region: region)


if !s3.bucket('mthomas-labs').exists?
  puts "mthomas-labs bucket does not exist!"
  exit
end

puts "uploading to  bucket mthomas-labs"

# Compute the file sha to salt the filename

f =  'files/meld-3.16.3.tar.xz'
sha256 = Digest::SHA256.file 'files/meld-3.16.3.tar.xz'
hex =  sha256.hexdigest

name = File.basename f
name = "#{hex.slice(0,12)}-#{name}"

obj = s3.bucket('mthomas-labs').object(name)
obj.upload_file(f)

