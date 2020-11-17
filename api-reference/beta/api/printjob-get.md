---
title: Get printJob
description: Retrieve the properties and relationships of a print job.
author: braedenp-msft
localization_priority: Normal
ms.prod: universal-print
doc_type: apiPageType
---

# Get printJob

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of a print job.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

In addition to the following permissions, the user or app's tenant must have an active Universal Print subscription and have a permission that grants [Get printer](printer-get.md) or [Get printerShare](printershare-get.md) access depending upon whether printer or printerShare is being used.

|Permission type | Permissions (from least to most privileged) |
|:---------------|:--------------------------------------------|
|Delegated (work or school account)| PrintJob.ReadBasic, PrintJob.Read, PrintJob.ReadBasic.All, PrintJob.Read.All, PrintJob.ReadWriteBasic, PrintJob.ReadWrite, PrintJob.ReadWriteBasic.All, PrintJob.ReadWrite.All |
|Delegated (personal Microsoft account)|Not Supported.|
|Application| PrintJob.ReadBasic.All, PrintJob.Read.All, PrintJob.ReadWriteBasic.All, PrintJob.ReadWrite.All |

## HTTP request
<!-- { "blockType": "ignored" } -->

To get a job from a printer:
```http
GET /print/printers/{id}/jobs/{id}
```

To get a job from a printer share:
```http
GET /print/shares/{id}/jobs/{id}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and a [printJob](../resources/printjob.md) object in the response body.
## Examples

### Example 1: Get print job

#### Request
The following is an example of a request to get metadata for a print job.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_printjob"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/print/printers/c05f3726-0d4b-4aa1-8fe9-2eb981bb26fb/jobs/5182
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-printjob-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-printjob-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-printjob-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-printjob-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.printJob"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 408

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#print/printers('c05f3726-0d4b-4aa1-8fe9-2eb981bb26fb')/jobs/$entity",
  "id": "5182",
  "createdDateTime": "2020-02-04T00:00:00.0000000Z",
  "createdBy": {},
  "status": {
    "processingState": "completed",
    "processingStateDescription": "The print job has completed successfully and no further processing will take place."
  }
}
```

### Example 2: Get print job with task list

#### Request
The following is a request to get a print job and any [tasks](../resources/printtask.md) that are executing, or have executed, against it.

<!-- {
  "blockType": "request",
  "name": "get_printjob_withtasks"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/print/printers/c05f3726-0d4b-4aa1-8fe9-2eb981bb26fb/jobs/5182?$expand=tasks
```

#### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.printJob"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 774

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#print/printers('c05f3726-0d4b-4aa1-8fe9-2eb981bb26fb')/jobs(tasks())/$entity",
  "id": "5182",
  "createdDateTime": "2020-06-30T17:18:52.3930472Z",
  "createdBy": {
    "id": "",
    "displayName": "",
    "userPrincipalName": ""
  },
  "status": {
    "processingState": "pendingHeld",
    "processingStateDescription": "The job is not a candidate for processing yet."
  },
  "tasks": [
    {
      "id": "d036638b-1272-4bba-9227-732463823ed3",
      "parentUrl": "https://graph.microsoft.com/beta/print/printers/c05f3726-0d4b-4aa1-8fe9-2eb981bb26fb/jobs/5182",
      "status": {
        "state": "processing",
        "description": "The task is being processed."
      }
    }
  ]
}
```

### Example 3: Get a print job and its associated document data

#### Request
The following is an example of a request to get a print job and its associated document data.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_printjob_withdocumentdata"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/print/printers/86b6d420-7e6b-4797-a05c-af4e56cd81bd/jobs/31216?$expand=documents
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-printjob-withdocumentdata-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-printjob-withdocumentdata-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-printjob-withdocumentdata-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-printjob-withdocumentdata-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


---

#### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.printJob"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 1688

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#print/printers('86b6d420-7e6b-4797-a05c-af4e56cd81bd')/jobs(documents())/$entity",
  "id": "31216",
  "createdDateTime": "2020-06-26T04:20:06.5715544Z",
  "createdBy": {
    "id": "",
    "displayName": "",
    "ipAddress": null,
    "userPrincipalName": "",
    "oDataType": null
  },
  "status": {
  "processingState": "aborted",
  "processingStateDescription": "The print job has been aborted by a user or the printer and no further processing will take place."
  },
  "documents@odata.context": "https://graph.microsoft.com/beta/$metadata#print/printers('86b6d420-7e6b-4797-a05c-af4e56cd81bd')/jobs('31216')/documents",
  "documents": [
    {
      "id": "ca96c367-c3ad-478a-bbce-fbd1cd856e73",
      "displayName": "",
      "contentType": "application/oxps",
      "size": 276604,
      "configuration": {
        "quality": "medium",
        "dpi": 300,
        "feedDirection": null,
        "orientation": "landscape",
        "duplexMode": "oneSided",
        "copies": 2,
        "colorMode": "color",
        "inputBin": null,
        "outputBin": null,
        "mediaSize": null,
        "mediaType": null,
        "finishings": [],
        "pagesPerSheet": null,
        "multipageLayout": "clockwiseFromTopLeft",
        "collate": true,
        "scaling": null,
        "fitPdfToPage": null,
        "margin": null,
        "pageRanges": []
      }
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get printJob",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


