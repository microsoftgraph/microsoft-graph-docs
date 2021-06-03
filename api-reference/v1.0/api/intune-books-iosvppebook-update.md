---
title: "Update iosVppEBook"
description: "Update the properties of a iosVppEBook object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update iosVppEBook

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [iosVppEBook](../resources/intune-books-iosvppebook.md) object.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementApps.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementApps.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceAppManagement/managedEBooks/{managedEBookId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [iosVppEBook](../resources/intune-books-iosvppebook.md) object.

The following table shows the properties that are required when you create the [iosVppEBook](../resources/intune-books-iosvppebook.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [managedEBook](../resources/intune-books-managedebook.md)|
|displayName|String|Name of the eBook. Inherited from [managedEBook](../resources/intune-books-managedebook.md)|
|description|String|Description. Inherited from [managedEBook](../resources/intune-books-managedebook.md)|
|publisher|String|Publisher. Inherited from [managedEBook](../resources/intune-books-managedebook.md)|
|publishedDateTime|DateTimeOffset|The date and time when the eBook was published. Inherited from [managedEBook](../resources/intune-books-managedebook.md)|
|largeCover|[mimeContent](../resources/intune-shared-mimecontent.md)|Book cover. Inherited from [managedEBook](../resources/intune-books-managedebook.md)|
|createdDateTime|DateTimeOffset|The date and time when the eBook file was created. Inherited from [managedEBook](../resources/intune-books-managedebook.md)|
|lastModifiedDateTime|DateTimeOffset|The date and time when the eBook was last modified. Inherited from [managedEBook](../resources/intune-books-managedebook.md)|
|informationUrl|String|The more information Url. Inherited from [managedEBook](../resources/intune-books-managedebook.md)|
|privacyInformationUrl|String|The privacy statement Url. Inherited from [managedEBook](../resources/intune-books-managedebook.md)|
|vppTokenId|Guid|The Vpp token ID.|
|appleId|String|The Apple ID associated with Vpp token.|
|vppOrganizationName|String|The Vpp token's organization name.|
|genres|String collection|Genres.|
|language|String|Language.|
|seller|String|Seller.|
|totalLicenseCount|Int32|Total license count.|
|usedLicenseCount|Int32|Used license count.|



## Response
If successful, this method returns a `200 OK` response code and an updated [iosVppEBook](../resources/intune-books-iosvppebook.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/v1.0/deviceAppManagement/managedEBooks/{managedEBookId}
Content-type: application/json
Content-length: 792

{
  "@odata.type": "#microsoft.graph.iosVppEBook",
  "displayName": "Display Name value",
  "description": "Description value",
  "publisher": "Publisher value",
  "publishedDateTime": "2016-12-31T23:58:16.1180489-08:00",
  "largeCover": {
    "@odata.type": "microsoft.graph.mimeContent",
    "type": "Type value",
    "value": "dmFsdWU="
  },
  "informationUrl": "https://example.com/informationUrl/",
  "privacyInformationUrl": "https://example.com/privacyInformationUrl/",
  "vppTokenId": "9148ac60-ac60-9148-60ac-489160ac4891",
  "appleId": "Apple Id value",
  "vppOrganizationName": "Vpp Organization Name value",
  "genres": [
    "Genres value"
  ],
  "language": "Language value",
  "seller": "Seller value",
  "totalLicenseCount": 1,
  "usedLicenseCount": 0
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 964

{
  "@odata.type": "#microsoft.graph.iosVppEBook",
  "id": "3b9f627e-627e-3b9f-7e62-9f3b7e629f3b",
  "displayName": "Display Name value",
  "description": "Description value",
  "publisher": "Publisher value",
  "publishedDateTime": "2016-12-31T23:58:16.1180489-08:00",
  "largeCover": {
    "@odata.type": "microsoft.graph.mimeContent",
    "type": "Type value",
    "value": "dmFsdWU="
  },
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "informationUrl": "https://example.com/informationUrl/",
  "privacyInformationUrl": "https://example.com/privacyInformationUrl/",
  "vppTokenId": "9148ac60-ac60-9148-60ac-489160ac4891",
  "appleId": "Apple Id value",
  "vppOrganizationName": "Vpp Organization Name value",
  "genres": [
    "Genres value"
  ],
  "language": "Language value",
  "seller": "Seller value",
  "totalLicenseCount": 1,
  "usedLicenseCount": 0
}
```




