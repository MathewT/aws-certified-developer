# Identity and Access Management (IAM)

**Identity**
  * User of resources
  * "Who is the user?"
  * Authentication

**Access Management**
  * Authorization
  
AWS IAM manages **users** and their level of access to the AWS console.  

## Main Features
1. Centralized control of the AWS account
1. Shared access to the AWS account.  Grant other identities permission to administer the account and/or use resources 
without sharing keys or passwords
1. Granular permissions to specific users (identities) to specifc services and levels for services
1. Identity Federation.  Federate non-AWS user identities including identities from 
Facebook, Active Directory, LinkedIn, etc.) to your AWS account.  Grant temporary access to these federated identities 
to access the AWS account.
1. Identity information for assurance using CloudTrail.   Track which identities made requests for resources.
1. Multifactor Authentication for console access
1. Temporary access to resources.  E.g allow web or mobile users temporary access to DynamoDb or S3 to store data.  
1. PCI/DSS compliance.   Compliance required for services accepting online payments and storing credit card data

## Eventually Consistent
1. Changes made via IAM to identity or resource permissions are "eventually consistent"
1. Changes take time to fully replicate and take effect

## Accessing IAM
1. AWS Management Console
1. AWS CLI
1. AWS SDK
1. IAM HTTPS API
  * All requests must be digitally signed (requires code) with authorized credentials

## First Time Access:  Root Account Credentials
1. Creating an AWS account results in the creation of "root" identity which is used to sign-in into the AWS console
1. *Root account credentials:* email and password
1. Complete, unrestricted access to all resources including billing
1. **Best Practice:** Do not use root account for day-to-day management
1. **Best Practice:** Do not share root account credentials


## IAM Users
1. Users are AWS identities associated to people who access the console or account resources
1. IAM is universal, does not apply to regions
1. New users have NO permissions when first created
1. New users are assigned Access Key ID and Secret Access Key when first created
1. **Best Practice:** Always setup Multi-factor authentication (MFA) on the root account
1. Each user can have their own password for Console access
1. Each user can have their own access key for programmatic access to resources within the account
1. Users can be non-human machine users

## Federating Existing Users
1. Users with identities owned/established by other systems can have those identities *federated* into the AWS account
1. The AWS user/identity who has already logged can still have their identity federated - their IAM user identity is 
replaced with a temporary identity within the AWS account
1. This *federated user* can then work with the AWS Console
### Useful Federation Scenarios


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
