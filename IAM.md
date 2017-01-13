# IAM

AWS IAM manages **users** and their level of access to the AWS console.  

## Main Features
1. Centralized control of the AWS account
1. Shared access to the AWS account
1. Granular permissions to users to specifc services and levels for services
1. Identity Federation including Facebook, Active Directory, LinkedIn, etc.) 
1. Multifactor Authentication for console access
1. Temporary access to resources.  E.g allow web or mobile users temporary access to DynamoDb or S3 to store data.  
1. PCI/DSS compliance.   Compliance required for services accepting online payments and storing credit card data

## Users
1. Users are AWS identities associated to people who access the console or account resources
1. IAM is universal, does not apply to regions.
1. New users have NO permissions when first created.
1. New users are assigned Access Key ID and Secret Access Key when first created.
1. Always setup Multi-factor authentication (MFA) on the root account.

## Groups

A group is a collection of users under one set of permissions.

## Roles
1. A role is an AWS identity with permission policies that determine what the identity 
can and cannot do in AWS
1. Roles are used to delegate access (permissions) to users, applications or services that don't normally have access 
to AWS resources
1. You create roles and assign to resources
1. Assigne IAM role to EC2 instance so instance apps can access S3 or DynamoDB
1. You can grant users in one AWS account access to resources in another AWS account.
1. Delegate access to AWS resources via IAM role:
  * Allow a mobile app access to AWS resources without embedding key/secret
  * Give access to AWS resources to users with identities outside AWS

## Policy Documents
1. A document in JSON format in which you define the permissions of a role.
1. Policy documents can be applied to users, groups or roles individually.
1. Policy documents are JSON documents and are a key value pair. Attribute/value

## ADFS

**Review again and make notes!**
