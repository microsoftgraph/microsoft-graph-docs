---
title: "Download printDocument binary file"
description: Download the binary file associated with the document.
author: braedenp-msft
localization_priority: Normal
ms.prod: universal-print
doc_type: apiPageType
---

# Download printDocument binary file

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Download the binary file associated with a [printDocument](../resources/printdocument.md). Calling this method yields a redirect response with a pre-authenticated URL that can be used to download the payload.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

In addition to the following permissions, the user or app's tenant must have an active Universal Print subscription and have a permission that grants [Get printer](printer-get.md) access.

| Permission type                        | Permissions (from least to most privileged)                  |
| :------------------------------------- | :----------------------------------------------------------- |
| Delegated (work or school account)     | PrintJob.Read, PrintJob.Read.All, PrintJob.ReadWrite, PrintJob.ReadWrite.All |
| Delegated (personal Microsoft account) | Not Supported.                                               |
| Application                            | PrintJob.Read.All, PrintJob.ReadWrite.All                    |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /print/printers/{id}/jobs/{id}/documents/{id}/$value
```
## Request headers
| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns `302 Found` and the pre-authenticated download URL in the Location header.

## Examples
The following example shows how to call this API to acquire a pre-authenticated download URL. To start the download, follow the redirect URL in the response.

### Request
<!-- {
  "blockType": "request",
  "name": "get_document_value"
}-->
```http
GET https://graph.microsoft.com/beta/print/printers/fcb0bc53-a446-41d0-bfc3-5c56cdbb0f2a/jobs/46140/documents/bd260b1a-044e-4ca6-afa9-17d9a587d254/$value
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 302 Accepted
Location: https://print.print.microsoft.com/downloads/bd260b1a-044e-4ca6-afa9-17d9a587d254?tempauthtoken={accesstoken}
```
