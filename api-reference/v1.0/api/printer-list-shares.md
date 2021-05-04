---
title: List printerShares for a printer
description: Retrieve a list of printerShares associated with the printer.
author: nilakhan
localization_priority: Normal
ms.prod: cloud-printing
doc_type: apiPageType
---

# List printerShares for a printer
Namespace: microsoft.graph

[!INCLUDE [cloudprinting-pricing-disclaimer](../../includes/cloudprinting-pricing-disclaimer.md)]

Retrieve a list of printer shares associated with the [printer](../resources/printer.md).
>**Note:** Currently, only **one** printer share per printer is supported.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

To use the Universal Print service, the user or app's tenant must have an active Universal Print subscription, a permission that grants [Get printer](printer-get.md) access, and one of the permissions listed in the following table.

|Permission type | Permissions (from least to most privileged) |
|:---------------|:--------------------------------------------|
|Delegated (work or school account)| PrinterShare.ReadBasic.All, PrinterShare.Read.All, PrinterShare.ReadWrite.All |
|Delegated (personal Microsoft account)|Not Supported.|
|Application| Not Supported. |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /print/printers/{printerId}/shares
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [printerShare](../resources/printershare.md) objects in the response body.

>**Note**: The response will not contain the **defaults** and **capabilities** properties. These properties can be queried using a [Get printerShare](printerShare-get.md) request.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_printershare_2"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/print/printers/{printerId}/shares
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-printershare-2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-printershare-2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/list-printershare-2-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-printershare-2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---



### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.printerShare)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#print/printers('2f3453b7-4686-4b5b-9575-4f1e5b909ba7')/shares",
      "id": "d837c17b-3296-4384-a053-828d56e10f50",
      "displayName": "PrinterShare Name",
      "createdDateTime": "2020-02-04T00:00:00.0000000Z",
      "isAcceptingJobs": true,
      "allowAllUsers": false,
      "status": {
        "state": "stopped",
        "details": [
          "disconnected"
        ],
        "description": ""
      },
      "defaults": {
        "copiesPerJob": 1,
        "finishings": [
          "none"
        ],
        "mediaColor": "Unknown",
        "mediaType": "stationery",
        "mediaSize": "North America Letter",
        "pagesPerSheet": 1,
        "orientation": "portrait",
        "outputBin": "auto",
        "inputBin": "auto",
        "contentType": "application/oxps",
        "fitPdfToPage": false,
        "multipageLayout": null,
        "colorMode": "color",
        "quality": "medium",
        "duplexMode": "oneSided",
        "dpi": 600,
        "scaling": null
      },
      "location": {
        "latitude": 47.6450,
        "longitude": -122.1409,
        "altitudeInMeters": 3,
        "streetAddress": "One Microsoft Way",
        "subUnit": [
          "Main Plaza",
          "Unit 400"
        ],
        "city": "Redmond",
        "postalCode": "98052",
        "countryOrRegion": "USA",
        "site": "Puget Sound",
        "building": "Studio E",
        "floor": "1",
        "floorDescription": "First Floor",
        "roomName": "1234",
        "roomDescription": "First floor copy room",
        "organization": [
          "C+AI",
          "Microsoft Graph"
        ],
        "subdivision": [
          "King County",
          "Red West"
        ],
        "stateOrProvince": "Washington"
      }
    }
  ]
}
```

