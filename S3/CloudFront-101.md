# CloudFront 101 (Just the Important Stuff)

## Edge Locations:  A physical location where content is cached.  Separate from a Region or AZ

## Origin:  The source or origination point of the content.  
(S3 bucket, EC2 instance, Elastic Load Balancer, Route53)

## Distribution:  A name or label for a CDN consisting of a number of Edge Locations

## Key Terms

1. Web distribution:  

2. RTMP: Streaming Adobe Flash media files



## Exam Tips:

1. Understand Edge Location is different and/or separate from a Region or AZ

2. Understand the Origin and that an Origin can be non-AWS
  * You can have **multiple origins** for a single distribution

3. Distributions (Web, RTMP)

4. Edge locations are not just READ, you can also write to edge Locations (i.e.
  PUT an object to an Edge location)

5. Objects are cached for the life of the TTL (time to live)

6. You can restrict access to content by enabling Restrict Viewer Access
and using/specifying signed URLs or signed cookies.

6. You can clear cached objects on-demand (independently of the TTL) but you
will be charged for it.



## Lab:  Creating a CDN

1. Create buckets in Sydney and Seoul

2. Upload objects to each bucket

3. Add Everyone Open/Download permissions to each object

4.  
