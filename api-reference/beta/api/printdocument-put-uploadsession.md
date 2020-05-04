---
title: "Create an upload session"
description: Create an upload session to add document data to a print job.
author: braedenp-msft
localization_priority: Normal
ms.prod: universal-print
doc_type: apiPageType
---

# Create an upload session

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create an upload session to add document data to a **printJob**. Only one user/application can have an active upload session for a printDocument at any given time.

After creating the upload session, file segments can be uploaded to the upload session's $value stream.

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
PUT /print/printers/{id}/jobs/{id}/documents/{id}/uploadSession
```
## Request headers
| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {token}. Required. |

## Request body
In the request body, supply the **size**, **contentType**, and **documentName** [printUploadSession](../resources/printuploadsession.md) fields that describe the document you will be uploading.

## Response
If successful, this method returns `200 OK` response code and [printUploadSession](../resources/printUploadSession.md) object in the response body.

## Example
The following example shows how to call this API to create an upload session.
##### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "printdocument-put-uploadsession"
}-->
```http
PUT https://graph.microsoft.com/beta/print/printers/{id}/jobs/{id}/documents/{id}/uploadSession
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

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.printUploadSession"
} -->
```http
HTTP/1.1 200 OK
Etag: <eTag_Value>
{
  "id": "d10b32d8-30ed-4c72-a69b-a7155f81947d",
  "size": 1024,
  "contentType" : "application/pdf",,
  "documentName" : "file.pdf"
  "expiryDateTime": "2020-04-29T09:21:55.523Z",
  "createdBy": {
    "application": {
      "id": "53328905-26eb-415a-96f6-311c68bb818e"
    },
    "user": {
      "id": "853364e6-6be9-4003-ad9b-acab84b41643"
    }
  },
  "missingRanges": [
    { 
      "start" : "0",
      "end" : "1023"
    }
  ]
}
```