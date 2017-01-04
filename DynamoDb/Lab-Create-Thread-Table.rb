require 'aws-sdk'

attribute_defs = [
  { attribute_name: 'ForumName', attribute_type: 'S' },
  { attribute_name: 'Subject',  attribute_type: 'S' }
]

key_schema = [
  { attribute_name: 'ForumName', key_type: 'HASH' },
  { attribute_name: 'Subject', key_type: 'RANGE' }
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
  table_name:               'mthomas-test-thread',
  key_schema:               key_schema,
  provisioned_throughput:   { read_capacity_units: 5, write_capacity_units: 10 }
}

dynamodb_client = Aws::DynamoDB::Client.new(region: 'us-east-1')

dynamodb_client.create_table(request)
dynamodb_client.wait_until(:table_exists, table_name: 'mthomas-test-thread')
