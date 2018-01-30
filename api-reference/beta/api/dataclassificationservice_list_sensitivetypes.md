# List sensitiveTypes

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Retrieve a list of sensitivetype objects.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Directory.Read.All   |
|Delegated (personal Microsoft account) | Not supported.   |
|Application | Directory.Read.All | 

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /dataClassification/sensitiveTypes
```

## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and collection of [sensitiveType](../resources/sensitivetype.md) objects in the response body.

## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_sensitivetypes"
}-->
```http
GET https://graph.microsoft.com/beta/dataClassification/sensitiveTypes
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.sensitiveType",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 267

{
  "value": [
    {
      "id": "019b39dd-8c25-4765-91a3-d9c6baf3c3b3",
      "name": "Philippines Unified Multi-Purpose ID Number",
      "description": "Detects Philippines Unified Multi-Purpose ID numbers",
      "rulePackageId": "00000000-0000-0000-0000-000000000000",
      "rulePackageType": "OutOfBox",
      "publisherName": "Microsoft Corporation"
    }, 
    {
      "id": "03937FB5-D2B6-4487-B61F-0F8BFF7C3517",
      "name": "Customized sensitive type",
      "description": "Customized sensitive type",
      "rulePackageId": "6EB6F75A-F3EF-4028-8F22-B20CE6E261F4",
      "rulePackageType": "CustomClassification",
      "publisherName": "DLP Team"
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List sensitiveTypes",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->