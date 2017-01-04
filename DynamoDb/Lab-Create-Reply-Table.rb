require 'aws-sdk'

attribute_defs = [
  { attribute_name: 'ID',               attribute_type: 'S' },
  { attribute_name: 'ReplyDateTime',    attribute_type: 'S' },
  { attribute_name: 'PostedBy',         attribute_type: 'S' }
]

key_schema = [
  { attribute_name: 'ID', key_type: 'HASH' },
  { attribute_name: 'ReplyDateTime', key_type: 'RANGE' }
]

index_schema = [
  { attribute_name: 'ID', key_type: 'HASH'  },
  { attribute_name: 'PostedBy',  key_type: 'RANGE' }
]

local_secondary_indexes = [{
  index_name:             'PostedBy-index',
  key_schema:             index_schema,
  projection:             { projection_type: 'KEYS_ONLY' }
}]

request = {
  attribute_definitions:    attribute_defs,
  table_name:               'mthomas-test-reply',
  key_schema:               key_schema,
  local_secondary_indexes:  local_secondary_indexes,
  provisioned_throughput:   { read_capacity_units: 5, write_capacity_units: 10 }
}

dynamodb_client = Aws::DynamoDB::Client.new(region: 'us-east-1')

dynamodb_client.create_table(request)
dynamodb_client.wait_until(:table_exists, table_name: 'mthomas-test-reply')
