require 'net/http'
require 'aws-sdk'
require 'openssl'
require 'nokogiri'

# Smaller one
# f = "https://sxsamples.trafficmanager.net/"
# f = "https://sxsamples.trafficmanager.net/Daily/MD170101.pgp"

# Index
f = "https://sxsamples.trafficmanager.net/Daily/"
# f = "https://sxsamples.trafficmanager.net/Daily/MD170102.pgp"

uri = URI(f)

puts "downloading #{f}"


Net::HTTP.start(uri.host, uri.port,
  :use_ssl => uri.scheme == 'https', 
  :verify_mode => OpenSSL::SSL::VERIFY_NONE) do |http|

  request = Net::HTTP::Get.new uri
  request.basic_auth ENV['SX_USER'], ENV['SX_SECRET']

  response = http.request request

  puts "#{response.code}"
  # puts "#{response.body}"

  page = Nokogiri::HTML(response.body)

  puts page
  puts page.class

  p = page.css('title')

  puts p

  p.each do |h|
    puts h
  end

end

