# DynamoDB Indexes

## Primary Keys - Two Types

### Single Attribute Primary Key
  * Partition Key (or Hash Key)
  * One single piece of data (e.g. unique ID or SHA256 or unique name)
  
### Composite Primary Key
  * Composed of **two** attributes
  * Partition key AND sort key (a.k.a. range key)
  * The combination of partition key and sort key will be unique
  * The sort key 
  * Example:  unique Id and date range

## Partition Key
  * DynamoDB uses the Partition Key as input to an internal hash function.  
  * The output of this hash function determines the data *partition*
  * **Partition** is the physical location of the data storage
  * **Partition key values must be unique.  Not two items in a table can share the same partition key.**
  
## Partition Key and Sort Key
  * The Partition Key is used as to generate the internal hash to determine the data parttion (storage)
  * The Partition Key can be duplicated but the sort key must be unique
  * All items with the same Partition Key are stored together in sorted order by sort key value
  * Forum Example:
    * User table with Single Attribute primary key of userid
    * Forum Post table with Composite primary key of userid/post-timestamp


## Indexes

### Local Secondary Index






  




