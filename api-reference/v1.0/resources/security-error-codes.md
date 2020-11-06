---
title: "Microsoft Graph Security API error responses"
description: "Errors in the Microsoft Graph Security API are returned using the standard HTTP 206 Partial Content status code and are delivered via a warning header."
author: "preetikr"
localization_priority: Normal
ms.prod: "security"
doc_type: conceptualPageType
---

# Microsoft Graph Security API error responses

Namespace: microsoft.graph

Errors in the Microsoft Graph Security API are returned using the standard HTTP 206 Partial Content status code and are delivered via a warning header.

## Errors

The Microsoft Graph Security API is a federated service that receives multiple responses from all data providers. When an HTTP error is received by the Microsoft Graph Security API, it will send back a warning header in the following format:
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

A user asks for `security/alerts/{alert_id}`.

```
Provider 1: 404 (provider does not have a record of this alert ID)
Provider 2: 504 (provider timed out)
Provider 3: 200 (success)
Provider 4: 403 (customer has not licensed this provider)
```

Because both 404 and 200 are expected conditions, the warning header contains the following:

```HTTP
Warning : 199 - "{Vendor2}/{Provider 2}/504/10000",    (usual timeout limit is set at 10 seconds)
          199 - "{Vendor4}/{Provider 4}/403/10"       (Provider 4 rejected the request in 10 ms)
```

> **Note:** Each HTTP header is a collection of subitems, so users can enumerate the Warning header and check all items.

## Constraints

The `$top` OData query parameter has a limit of 1000 alerts. We recommend that you include only `$top` and not `$skip` in your first GET query. You can use `@odata.nextLink` for pagination. If you need to use `$skip`, it has a limit of 500 alerts. For example, `/security/alerts?$top=10&$skip=500` will return a `200 OK` response code, but `/security/alerts?$top=10&$skip=501` will return a `400 Bad Request` response code. For more information, see [Microsoft Graph Security API error responses](../resources/security-error-codes.md).

A workaaround for this limit is to use the `$filter` OData query parameter with the `eventDateTime` of the alert entity from the Microsoft Graph Security API, using `?$filter=eventDateTime gt {YYYY-MM-DDT00:00:00.000Z}` and replacing the dateTime value with the last (1500th) alert. You can also set a range for the `eventDateTime`; for example, *alerts?$filter=eventDateTime **gt** 2018-11-**11**T00:00:00.000Z&eventDateTime **lt** 2018-11-**12**T00:00:00.000Z*

## See also

If you’re having trouble with authorization, see [Authorization and the Microsoft Graph Security API](/graph/security-authorization).

