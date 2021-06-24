---
title: Update printer
description: Update the properties of a printer object.
author: nilakhan
localization_priority: Normal
ms.prod: cloud-printing
doc_type: apiPageType
---

# Update printer
Namespace: microsoft.graph

[!INCLUDE [cloudprinting-pricing-disclaimer](../../includes/cloudprinting-pricing-disclaimer.md)]

Update the properties of a [printer](../resources/printer.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

In addition to the following permissions, the user's tenant must have an active Universal Print subscription. The signed in user must be a [Printer Administrator](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#printer-administrator).

>**Note:** Only the app that registered the printer is allowed to update the printer using application permissions.

|Permission type | Permissions (from least to most privileged) |
|:---------------|:--------------------------------------------|
|Delegated (work or school account)| Printer.ReadWrite.All, Printer.FullControl.All |
|Delegated (personal Microsoft account)|Not Supported.|
|Application| Printer.ReadWrite.All |

>**Note:** Right now, only printers that don't have physical device can be updated using application permissions.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /print/printers/{printerId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-type|`application/json` when using delegated permissions, `application/ipp` or `application/json` when using application permissions. Required.|

## Request body

### Delegated permissions and JSON payload

If using delegated permissions, in the request body, supply the values for the relevant [printer](../resources/printer.md) fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed. 

The following properties can be updated using delegated permissions.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|defaults|[printerDefaults](../resources/printerdefaults.md)|The printer's default print settings.|
|location|[printerLocation](../resources/printerlocation.md)|The physical and/or organizational location of the printer.|
|displayName|String|The name of the printer.|

### Application permissions and JSON payload
In the request body, supply the values for the relevant [printer](../resources/printer.md) fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed. 

The following properties can be updated using application permissions.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|defaults|[printerDefaults](../resources/printerdefaults.md)|The printer's default print settings.|
|capabilities|[printerCapabilities](../resources/printerCapabilities.md)|The capabilities of the printer associated with this printer share.|
|displayName|String|The name of the printer.|
|manufacturer|String|The manufacturer of the printer.|
|model|String|The model name of the printer.|
|status|[printerStatus](../resources/printerstatus.md)|The processing status of the printer, including any errors.|
|isAcceptingJobs|Boolean|Whether the printer is currently accepting new print jobs.|

### Application permissions and IPP payload

With application permissions, a printer can also be updated using an Internet Printing Protocol (IPP) payload. In this case, the request body contains a binary stream that represents the Printer Attributes group in [IPP encoding](https://tools.ietf.org/html/rfc8010).

The client MUST supply a set of Printer attributes with one or more values (including explicitly allowed out-of-band values) as defined in [RFC8011 section 5.2](https://tools.ietf.org/html/rfc8011#section-5.2) Job Template Attributes ("xxx-default", "xxx-supported", and "xxx-ready" attributes), [Section 5.4](https://tools.ietf.org/html/rfc8011#section-5.4) Printer Description Attributes, and any attribute extensions supported by the Printer. The value(s) of each Printer attribute
supplied replaces the value(s) of the corresponding Printer attribute on the target Printer object. For attributes that can have multiple values (1setOf), all values supplied by the client replace all values of the corresponding Printer object attribute.

> **Note:** Do not pass operation attributes in the request body. The request body should only contain printer attributes.


> **Note:** For printers to work with a particular platform, it should meet the requirements of that platform. For example, on windows client, it is expected that printer specifies all attributes that are considered mandatory as per [MOPRIA](https://mopria.org) specs. Please note MOPRIA specs are available to only the paid members of MOPRIA.

## Response

### Delegated permissions and JSON payload

If using delegated permissions, if successful, this method returns a `200 OK` response code and an updated [printer](../resources/printer.md) object in the response body.

### Application permissions and JSON payload

If using delegated permissions, if successful, this method returns a `200 OK` response code and an updated [printer](../resources/printer.md) object in the response body.

### Application permissions and IPP payload

If using application permissions, if successful, this method returns `204 No content` response code. It does not return anything in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_printer"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/print/printers/{printerId}
Content-Type: application/json
Content-length: 581

{
  "name": "PrinterName",
  "location": {
    "latitude": 1.1,
    "longitude": 2.2,
    "altitudeInMeters": 3
  }
}
```
# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-printer-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/update-printer-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---



### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.printer"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#print/printers/$entity",
  "id": "016b5565-3bbf-4067-b9ff-4d68167eb1a6",
  "displayName": "PrinterName",
  "manufacturer": "PrinterManufacturer",
  "model": "PrinterModel",
  "isShared": true,
  "registeredDateTime": "2020-02-04T00:00:00.0000000Z",
  "isAcceptingJobs": true,
  "status": {
    "state": "idle",
    "details": [],
    "description": ""
  },
  "defaults": {
    "copiesPerJob":1,
    "contentType": "application/oxps",
    "finishings": ["none"],
    "mediaType": "stationery"
  },
  "location": {
    "latitude": 1.1,
    "longitude": 2.2,
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
```

