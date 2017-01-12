# IAM

AWS IAM manages **users** and their level of access to the AWS console.  

## Users
1. Centralized control of the AWS account
1. Shared access to the AWS account
1. Granular permissions to users to specifc services and levels for services
1. Identity Federation including Facebook, Active Directory, LinkedIn, etc.) 
1. Multifactor Authentication for console access
1. Temporary access to resources.  E.g allow web or mobile users temporary access to DynamoDb or S3 to store data.  
1. IAM is universal, does not apply to regions.
1. New users have NO permissions when first created.
1. New users are assigned Access Key ID and Secret Access Key when first created.
1. Always setup Multi-factor authentication (MFA) on the root account.

## Groups

A way to partition users and apply policies to them collectively.

## Roles

## Policy Documents

Policy documents can be applied to users, groups and roles individually.
Policy documents are JSON documents and are a key value pair.   Attribute/value

## ADFS

**Review again and make notes!**
