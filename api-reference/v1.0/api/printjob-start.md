---
title: "printJob: start"
description: Submits the print job to the associated printer or printerShare. It will be printed once any existing pending jobs are completed, aborted or canceled.
author: nilakhan
localization_priority: Normal
ms.prod: cloud-printing
doc_type: apiPageType
---

# printJob: start
Namespace: microsoft.graph

[!INCLUDE [cloudprinting-pricing-disclaimer](../../includes/cloudprinting-pricing-disclaimer.md)]

Submits the print job to the associated [printer](../resources/printer.md) or [printerShare](../resources/printershare.md). It will be printed after any existing pending **jobs** are completed, aborted, or canceled.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

In addition to the following permissions, the user or app's tenant must have an active Universal Print subscription and have a permission that grants [Get printer](printer-get.md) or [Get printerShare](printershare-get.md) depending upon whether printer or printerShare is being used.

|Permission type | Permissions (from least to most privileged) |
|:---------------|:--------------------------------------------|
|Delegated (work or school account)| PrintJob.Create, PrintJob.ReadWriteBasic, PrintJob.ReadWrite, PrintJob.ReadWriteBasic.All, PrintJob.ReadWrite.All |
|Delegated (personal Microsoft account)|Not Supported.|
|Application| Not Supported. |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /print/shares/{printerShareId}/jobs/{printJobId}/start
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a [printJobStatus](../resources/printjobstatus.md) object in the body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "printjob_start"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/print/shares/{printerShareId}/jobs/{printJobId}/start
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/printjob-start-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/printjob-start-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/printjob-start-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/printjob-start-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.printJobStatus"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "state": "processing",
    "description": "The print job is currently being processed.",
    "isAcquiredByPrinter": false,
    "details": ["interpreting"]
}
```

