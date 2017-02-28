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
  - Requires an application architecture designed to distribute workload:

#### Stateless Applications (Scaling Horizontally)
  - Each application transaction requires no knowledge of prior transactions
  - Stores no session information
  - Enables horizontal scale as any app resource can service any app request
  - Scale by simply adding more compute resources
  - Compute resources do not need to be aware of peers
  
#### Stateless Components (Scaling Horizontally)
  - In practice, most apps need to maintain some state
  - One approach (partially stateless architecture), web apps store session information
  in HTTP cookies at the client's browser (e.g. items in the shopping cart)
  - Two problems with this approach:
    - The content of HTTP cookies can be tampered with and should not be considered trustworthy
    - HTTP cookies are transmitted with every request, potentially increasing latency
  - **Best Practice:**  Store only a session identifier in the HTTP cookie and store more detailed 
  session information on the server side
  - **Best Practice:** Don't store detailed session information in the local file system, resulting in a 
  stateful architecture
  - **Best Practice:** Store detailed session information in a fast, flexible database such as DynamoDB
  - **Best Practice:** Avoid stateful architectures by using S3, EFS or other storage service to store 
  larger files associated to users
  - **Best Practice:** For multi-step workflows requiring persistence of state from each step, 
  use Amazon Simple Workflow Service (SWF) to centrally store execution history and keep workloads stateless
  
#### Stateful Components (Scaling Horizontally)
  - Sometimes stateful components are unavoidable
    - real time multiplayer games requiring a connection to a single server for long periods of time for 
    lower latency (connected sockets)

#### Distributed Processing (Scaling Horizontally)

## Disposable Resources Instead of Fixed Servers
  - *configuration drift*:  changes and patches applied through time resulting in untested and hetrogenous configurations across environments
  - **Best practice:**  immutable infrastructure pattern.  
    - Once launched, a server is never updated in its lifetime
    - Updates to servers are deployed to new servers with latest configuration and are tested
    
### Instantiating Compute Resources

  - Setting up compute resources (servers) must be automated and repeatable
  - Bootstrapping (installation/config scripts at boot time)
  - Golden Images (EBS volume snapshots)
  
