require 'aws-sdk'


## Create ProductCatalog Table
attribute_defs = [
  { attribute_name: 'ID',        attribute_type: 'N' }
]

key_schema = [
  { attribute_name: 'ID', key_type: 'HASH' }
]

index_schema = [
  { attribute_name: 'ID', key_type: 'HASH'  }
]

request = {
  attribute_definitions:    attribute_defs,
  table_name:               'mthomas-test-product-catalog',
  key_schema:               key_schema,
  provisioned_throughput:   { read_capacity_units: 5, write_capacity_units: 10 }
}

dynamodb_client = Aws::DynamoDB::Client.new(region: 'us-east-1')

dynamodb_client.create_table(request)
dynamodb_client.wait_until(:table_exists, table_name: 'mthomas-test-product-catalog')

