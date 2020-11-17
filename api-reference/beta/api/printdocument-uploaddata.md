---
title: "printDocument: uploadData"
description: Upload a single binary segment of the printDocument.
author: braedenp-msft
localization_priority: Normal
ms.prod: universal-print
doc_type: apiPageType
---

# printDocument: uploadData

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Upload a single binary segment of the **printDocument**.

You can upload the entire file, or split the file into multiple byte ranges, as long as no request is larger than 1 MB.

The segments of the file can be uploaded in any order and can be uploaded in parallel, with up to four concurrent requests. When all the binary segments of document are uploaded, the binary file is linked to the **printJob**.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

In addition to the following permissions, the user or app's tenant must have an active Universal Print subscription and have a permission that grants [Get printer](printer-get.md) access.

|Permission type | Permissions (from least to most privileged) |
|:---------------|:--------------------------------------------|
|Delegated (work or school account)| PrintJob.ReadWrite, PrintJob.ReadWrite.All |
|Delegated (personal Microsoft account)|Not Supported.|
|Application| Not Supported. |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /print/printers/{id}/jobs/{id}/documents/{id}/uploadData
```
## Request headers
| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {token}. Required. |
| Range | bytes={startByteIndex}-{endByteIndex}‬  |
| Content-Length | {contentLength}‬  |
| Content-type  | application/json. Required.|

## Request body
The request body is a binary blob containing the bytes of the document that are specified as an inclusive byte range in the `Range` header. 

## Response
If successful, this method returns one of the following responses. It does not return anything in the response body.

| Condition     | Response code |
|:--------------|:--------------|
| One or more binary segments still need to be uploaded | `202 Accepted` |
| All binary segments have been uploaded successfully | `201 Created` |

## Example
The following example shows how to call this API to upload the first 72797 bytes of a document.
##### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "printdocument-uploaddata"
}-->
```http
POST https://graph.microsoft.com/beta/print/printers/{id}/jobs/{id}/documents/{id}/uploadData
Range: bytes=0-72796
Content-Length: 72797
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

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/printdocument-uploaddata-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

##### Response

One or more segments missing:
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.printDocument"
} -->
```http
HTTP/1.1 202 Accepted
```

All segments received:
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.printDocument"
} -->
```http
HTTP/1.1 201 Created
```


