# Classify File

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Use this API to identify any sensitive information in a user-submitted file.

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
POST /dataClassification/classifyFile
```
## Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer {token}. Required.|
| Content-Type | multipart/form-data |

## Request body
In the request body, supply the file to be classified. Optionally supply the sensitive type IDs.


## Response
If successful, this method returns `202, Accepted` response code and empty response body.

## Example
##### Request
Here is an example of the request. "sensitiveTypes" part is optional.
<!-- {
  "blockType": "request",
  "name": "create_fileclassificationrequest_from_dataclassificationservice"
}-->
```http
POST https://graph.microsoft.com/beta/dataClassification/classifyFile
Content-type: multipart/form-data; boundary=MyPartBoundary198374
Content-length: 845

--MyPartBoundary198374
Content-Disposition:form-data; name="file"; filename="testfile.txt"
Content-Type:application/octet-stream

... binary file data ...

--MyPartBoundary198374
Content-Disposition:form-data; name="sensitiveTypes"
Content-Type:application/json

[
  "a44669fe-0d48-453d-a9b1-2cc83f2cba77",
  "3e074672-d35e-4604-8a30-29306b931da9"
]

--MyPartBoundary198374--
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.fileClassificationRequest"
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
  "description": "Create fileClassificationRequest",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->