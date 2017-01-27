require 'aws-sdk'

puts "hello world."

dynamoDB = Aws::DynamoDB::Resource.new(region: 'us-east-1')
      
dynamoDB.tables.each do |t|
  puts "Name:    #{t.name}"
  puts "#Items:  #{t.item_count}"
end

