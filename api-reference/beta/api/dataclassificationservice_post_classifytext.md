# Classify Text

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Use this API to identify any sensitive information in a user-submitted string of text.

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
POST /dataClassification/classifyText
```
## Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer {token}. Required.|
| Content-Type | application/json |

## Request body
In the request body, supply a JSON representation of [textClassificationRequest](../resources/textclassificationrequest.md) object.


## Response
If successful, this method returns `202, Accepted` response code and empty response body.

## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_textclassificationrequest_from_dataclassificationservice"
}-->
```http
POST https://graph.microsoft.com/beta/dataClassification/classifyText
Content-type: application/json

{
  "text": "...SSN 123-12-1234...",
  "sensitiveTypeIds": [
    "019b39dd-8c25-4765-91a3-d9c6baf3c3b3",
    "01c1209b-6389-4faf-a5f8-3f7e13899652"
  ]
}
```
In the request body, supply a JSON representation of [textClassificationRequest](../resources/textclassificationrequest.md) object.
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.textClassificationRequest"
} -->
```http
HTTP/1.1 202 Accepted
Content-length: 0
Location: https://graph.microsoft.com/beta/dataClassification/jobs/60d81f98-d2cd-4525-a5d3-f627cc349181
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create textClassificationRequest",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->