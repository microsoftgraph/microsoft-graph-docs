---
title: "Upload data by using upload session"
description: Upload data to a document by using an upload session's $value stream.
author: braedenp-msft
localization_priority: Normal
ms.prod: universal-print
doc_type: apiPageType
---

# Upload data by using upload session

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Upload data to a document by using an upload session's $value stream.

After [creating an upload session](printdocument-put-uploadsession.md), data can be uploaded to its $value stream either all at once or in a series of file segments that will later be combined to create the entire file.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

In addition to the following permissions, the user's tenant must have an active Universal Print subscription and permission that grants the ability to [Get printer](printer-get.md).

|Permission type | Permissions (from least to most privileged) |
|:---------------|:--------------------------------------------|
|Delegated (work or school account)| PrintJob.ReadWrite, PrintJob.ReadWrite.All |
|Delegated (personal Microsoft account)|Not Supported.|
|Application|PrintJob.ReadWrite.All|

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /print/printers/{id}/jobs/{id}/documents/{id}/uploadSession/$value
```
## Request headers
| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {token}. Required. |
| Content-Length | The entire size of the document. Required. |
| Content-Range | The range of bytes being uploaded in this request. Required. |
| Content-Type | application/octet-stream. Required. |
| If-Match | The ID of the upload session the data should be uploaded to. Required. |

## Request body
In the request body, supply the binary document data for the specified byte range.

## Response
If successful, this method returns `200 OK` response code and [printUploadSession](../resources/printUploadSession.md) object in the response body.

## Example
The following example shows how to call this API to upload data by using an upload session.
##### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "printdocument-put-uploadsession"
}-->
```http
POST https://graph.microsoft.com/beta/print/printers/{id}/jobs/{id}/documents/{id}/uploadSession/$value
Content-type: application/json

{
  "size" : 1024,
  "contentType" : "application/pdf",
  "documentName" : "file.pdf"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/printdocument-uploaddata-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/printdocument-uploaddata-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/printdocument-uploaddata-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

##### Response

One or more segments missing:
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 202 Accepted
```

All segments received:
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 201 Created
```
```