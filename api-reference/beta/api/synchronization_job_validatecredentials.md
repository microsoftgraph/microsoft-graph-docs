# synchronizationJob: validateCredentials

Test provided credentials against the directory.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account)     |Directory.ReadWrite.All  |
|Delegated (personal Microsoft account) |Directory.ReadWrite.All  |
|Application                            |Directory.ReadWrite.All  | 

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /servicePrincipals/<id>/synchronization/jobs/<id>/validateCredentials

```
## Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer {code}|

## Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|useSavedCredentials|Boolean|When `true`, `"credentials"` parameter will be ignored and previously saved credentials (if any) will be validated instead. |
|credentials|[synchronizationSecretKeyStringValuePair](../resources/synchronization_secretkeystringvaluepair.md) collection|Credentials to validate. Ignored when `"useSavedCredentials"` parameter is `true`.|

## Response
If validation is successful, this method returns `204, No Content` response code. It does not return anything in the response body.

## Example
Here is an example of how to call this API.
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "synchronizationjob_validatecredentials"
}-->
```http
POST https://graph.microsoft.com/beta/servicePrincipals/<id>/synchronization/jobs/<id>/validateCredentials
Content-type: application/json
Content-length: 218

{ 
    credentials: [ 
        { key: "UserName", value: "user@domain.com" },
        { key: "Password", value: "[redacted]" }
    ]
}
```

##### Response
Here is an example of the response. 
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.None"
} -->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "synchronizationJob: validateCredentials",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->