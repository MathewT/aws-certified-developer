require 'aws-sdk'

dynamoDB = Aws::DynamoDB::Resource.new(region: 'us-east-1')

table = dynamoDB.table('mthomas-test-users')

table.put_item({
  item:
    {
      "ID" => 123456,
      "FirstName" => 'Snoop',
      "LastName" => 'Doug'
    }
  })

table.put_item({
  item:
    {
      "ID" => 484748,
      "FirstName" => 'Wolfgang',
      "LastName" => 'Mozart'
    }
  })
