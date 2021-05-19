---
title: List shares
description: Retrieve a list of printer shares.
author: braedenp-msft
localization_priority: Normal
ms.prod: cloud-printing
doc_type: apiPageType
---

# List shares
Namespace: microsoft.graph

[!INCLUDE [cloudprinting-pricing-disclaimer](../../includes/cloudprinting-pricing-disclaimer.md)]

Retrieve a list of **printerShares**.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

To use the Universal Print service, the user or app's tenant must have an active Universal Print subscription, in addition to the permissions listed in the following table.

|Permission type | Permissions (from least to most privileged) |
|:---------------|:--------------------------------------------|
|Delegated (work or school account)| PrinterShare.ReadBasic.All, PrinterShare.Read.All, PrinterShare.ReadWrite.All |
|Delegated (personal Microsoft account)|Not Supported.|
|Application|Not Supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /print/shares
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

To see a list of each printer share's capabilities, include the optional `$select=capabilities` query parameter.

### Exceptions
Some operators are not supported: `$count`, `$orderby`, `$search`.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [printerShare](../resources/printershare.md) objects in the response body.

>**Note**: The response will not contain the **defaults** and **capabilities** properties. You can get these properties via a [Get printerShare](printershare-get.md) request.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_printershare_1"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/print/shares
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-printershare-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-printershare-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/list-printershare-1-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-printershare-1-java-snippets.md)]
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
      "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#print/shares",
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

