require 'aws-sdk'

dynamoDB = Aws::DynamoDB::Resource.new(region: 'us-east-1')


puts "ProductCatalog loading...."

table = dynamoDB.table('mthomas-test-product-catalog')

table.put_item({
  item:
    {
      'ID' => 123456,
      'Title' => 'Book 101',
      'ISBN' => '101-101111111',
      'Authors' => 'Author - 1',
      'Price' => 2,
      'Dimensions' => '8.5 x 11.0 x 0.5',
      'PageCount' => 500,
      'InPublication' => 1,
      'ProductCategory' => 'Book'
    }
  })

