# Microsoft Graph throttling guidance

Throttling limits the number of concurrent calls to a service to prevent overuse of resources. Microsoft Graph is designed to handle a high volume of requests. If an overwhelming number of requests occurs, throttling helps maintain optimal performance and reliability of the Microsoft Graph service.

Throttling limits vary based on the scenario. For example, if you are performing a large volume of writes, the possibility for throttling is higher than if you are only performing reads.

## What happens when throttling occurs?

When a throttling threshold is exceeded, Microsoft Graph limits any further requests from that client for a period of time. When throttling occurs, Microsoft Graph returns HTTP status code 429 ("Too many requests"), and the requests fail. A suggested wait time is returned in the response header of the failed request. Throttling behavior can depend on the type and number of requests. For example, if you have a high volume of requests, all requests types are throttled. Threshold limits vary based on the request type. Therefore, you could encounter a scenario where writes are throttled but reads are still permitted. 

## Common throttling scenarios

The most common causes of throttling of clients include:

* A large number of requests across all applications in a tenant.

* A large number of requests from a particular application across all tenants.

## Best practices to handle throttling

* Reduce the number of operations per request.

* Reduce the frequency of calls.

* Avoid immediate retries since all requests accrue against your usage limits.

When implementing error handling, use the HTTP error code 429 to detect throttling. The failed response includes the *Retry-After* field in the response header. Backing off requests using the *Retry-After* delay is the fastest way to recover from throttling because Microsoft Graph continues to log resource usage while a client is being throttled.

1. Wait the number of seconds specified in the *Retry-After* field.

2. Retry the request.

3. If the request fails again with a 429 error code, you are still being throttled. Continue to use the recommended Retry-After delay and retry the request until it succeeds.

For a broader discussion of throttling on the Microsoft Cloud, see [Throttling Pattern](https://msdn.microsoft.com/en-us/library/office/dn589798.aspx).
