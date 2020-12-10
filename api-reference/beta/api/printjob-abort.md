---
title: "printJob: abort"
description: Abort a print job.
author: nilakhan
localization_priority: Normal
ms.prod: universal-print
doc_type: apiPageType
---

# printJob: abort

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Abort a print job. Only applications using application permissions can abort a print job.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

In addition to the following permissions, the app's tenant must have an active Universal Print subscription and have a permission that grants [Get printer](printer-get.md) access.

|Permission type | Permissions (from least to most privileged) |
|:---------------|:--------------------------------------------|
|Delegated (work or school account)| Not Supported |
|Delegated (personal Microsoft account)|Not Supported.|
|Application| PrintJob.ReadWriteBasic.All, PrintJob.ReadWrite.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /print/printers/{id}/jobs/{id}/abort
```
## Request headers
| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {token}. Required. |

## Request body
In the request body, you can optionally provide the reason why the job is being aborted.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|reason|String|Reason why job is being aborted.|

## Response
If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.

## Example
The following example shows how to call this API.
### Request
The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "printjob-abort"
}-->
```http
POST https://graph.microsoft.com/beta/print/printers/{id}/jobs/{id}/abort
```

### Response
The following is an example of the response. 
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
  "description": "printJob: abort",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
