require 'aws-sdk'

attribute_defs = [
  { attribute_name: 'ID',        attribute_type: 'N' },
  { attribute_name: 'FirstName', attribute_type: 'S' },
  { attribute_name: 'LastName',  attribute_type: 'S' }
]

key_schema = [
  { attribute_name: 'ID', key_type: 'HASH' }
]

index_schema = [
  { attribute_name: 'FirstName', key_type: 'HASH'  },
  { attribute_name: 'LastName',  key_type: 'RANGE' }
]

global_indexes = [{
  index_name:             'LastNameFirstNameIndex',
  key_schema:             index_schema,
  projection:             { projection_type: 'ALL' },
  provisioned_throughput: { read_capacity_units: 5, write_capacity_units: 10 }
}]

request = {
  attribute_definitions:    attribute_defs,
  table_name:               'mthomas-test-users',
  key_schema:               key_schema,
  global_secondary_indexes: global_indexes,
  provisioned_throughput:   { read_capacity_units: 5, write_capacity_units: 10 }
}

dynamodb_client = Aws::DynamoDB::Client.new(region: 'us-east-1')

dynamodb_client.create_table(request)
dynamodb_client.wait_until(:table_exists, table_name: 'mthomas-test-users')
