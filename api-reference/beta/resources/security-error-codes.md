# Security API error responses

Errors in the security API in Microsoft Graph are returned using standard HTTP status codes and are delivered by way of a warning header.

The security API is a federated service that receives multiple responses from all data providers. When an HTTP error is received by the security API, it will send back a warning header in the following format:
<!-- { "blockType": "ignored" } -->

```http
{Vendor}/{Provider}/{StatusCode}/{LatencyInMs}
```

This warning header is only sent back to clients when one of the data providers returns an error code other than 2xx or 404. For example:

- HttpStatusCode.Forbidden (403) might be returned if the access to the resource is not granted.
- If a provider times out, HttpStatusCode.GatewayTimeout (504) is returned in the warning header.
- If an internal provider error happens, HttpStatusCode.InternalServerError (500) is used in the warning header.

If a data provider returns 2xx or 404, it’s not shown in the warning header because these codes are expected for success or when data is not found respectively. In a federated system, a 404 not found is expected as many times the data is only known to one or several, but not all, providers.

## Example

A user asks for `/alerts/{id}`.

    Provider 1: 404 (provider does not have a record of this alert ID)
    Provider 2: 504 (provider timed out)
    Provider 3: 200 (success)
    Provider 4: 403 (customer has not licensed this provider)

Because both 404 and 200 are expected conditions, the warning header contains the following: 

```HTTP
Warning : 199 - "{Vendor2}/{Provider 2}/504/29000",    (usual timeout limit is set at 29 seconds)
          199 - "{Vendor4}/{Provider 4}/403/10"       (Provider 4 rejected the request in 10 ms)
```

> **Note:** Each HTTP header is a collection of subitems, so users can enumerate the Warning header and check all items.

## Additional resources

If you’re having trouble with authentication see our [blog post](https://techcommunity.microsoft.com/t5/Using-Microsoft-Graph-Security/Authorization-and-Microsoft-Graph-Security-API/m-p/184376#M2).
