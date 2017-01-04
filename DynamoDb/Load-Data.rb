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

table.put_item({
  item:
    {
      'ID' => 123457,
      'Title' => 'Book 202',
      'ISBN' => '202-202222222',
      'Authors' => 'Author - 2',
      'Price' => 2,
      'Dimensions' => '8.5 x 11.0 x 0.5',
      'PageCount' => 200,
      'InPublication' => 1,
      'ProductCategory' => 'Book'
    }
  })


table.put_item({
  item:
    {
      'ID' => 123458,
      'Title' => 'Book 303',
      'ISBN' => '303-303333333',
      'Authors' => 'Author - 3',
      'Price' => 2,
      'Dimensions' => '8.5 x 11.0 x 0.5',
      'PageCount' => 500,
      'InPublication' => 1,
      'ProductCategory' => 'Book'
    }
  })

