# S3 Security and encryption

## Securing Buckets

  - By default all new buckets are private
  - You can setup access control to your buckets using:
    * Bucket Policies (permissions applied to the entire bucket)
    * Access Control Lists - apply to individual objects in a bucket
  - S3 Bucket Logging - Buckets can be configured to log all access requests;
  logging can be sent to another bucket, even a bucket in an another account


## Encryption

### Encryption in Transit to Buckets
  - SSL/TLS

### Encryption at Rest (in bucket)

  1. Server Side Encryption
    1. S3 Managed Keys - SSE-S3
      - Encryption keys are encrypted by master key
      - Encryption keys are rotated
    2. AWS Key Management Service, Managed Keys - SSE-KMS
      - Encryption keys are managed by AWS Key Management
      - Encryption keys are encrypted by envelope key
      - Provides audit trail of key usage
    3. Server Side Encryption with customer provided keys - SSE-C

  2. Client Side Encryption

## Storage Gateway Appliances
### Gateway Stored Volumes
  - Entire dataset is stored on site and is asynchronously backed up to S3

### Gateway Cached Volumes
  - Entire dataset is stored in S3 and the most frequently accessed data is
  cached on site.

### Gateway Virtual Tape Library
  - Replacement for physical tapes
  - Used for backups
  - Uses popular applications like NetBackup, Backup Exec, Veam, etc.

## Import/Export Disk (properly replaced)

## Import/Export Snowball
