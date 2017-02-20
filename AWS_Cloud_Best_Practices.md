# AWS Cloud Best Practices

## The Cloud Computing Difference
### IT Assets As Programmable Resources
  - Non-cloud provisioned capacity is based on theorectical maximum limits resulting in under-capacity 
  or idle resources
  - Cloud provisioned resources can set to the correct level of demand and scale dynamically
  - Cloud provisioned resources are temporary and disposable

### Global, Available, Unlimited Capacity
  - Global cloud infrastructure allows regional deployment of resources
  - Compliance, data residency constraints, latency considerations

### Higher Level Managed Services
  - Reduce dependency on in-house specialized skills
  - Lower operational complexity and cost
  - Lower implementation risk

### Security Built In
  - Many levels of security and encryption built in
  - Since AWS services are programmable, security can be formalized in 
  the architectural model

## Design Principles

### Scaling Vertically
  - Scaling by increasing the specification of an individual service resource 
  (e.g. upgrading a server with a larger hard drive, CPU or more RAM)
  - Very limited scale story
  - Not cost effective
  - Easy to implement in the short term

### Scaling Horizontally
  - Takes place by increasing the number of resources of the same (consistent) 
  specification
  - Adding more hard drives, not bigger
  - Adding more servers to an application
  - 
