---
title: "androidEnrollmentCompanyCode resource type"
description: "A class to hold specialty enrollment data used for enrolling via Google's Android Management API, such as Token, Url, and QR code content"
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# androidEnrollmentCompanyCode resource type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A class to hold specialty enrollment data used for enrolling via Google's Android Management API, such as Token, Url, and QR code content

## Properties
|Property|Type|Description|
|:---|:---|:---|
|enrollmentToken|String|Enrollment Token used by the User to enroll their device.|
|qrCodeContent|String|String used to generate a QR code for the token.|
|qrCodeImage|[mimeContent](../resources/intune-shared-mimecontent.md)|Generated QR code for the token.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.androidEnrollmentCompanyCode"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.androidEnrollmentCompanyCode",
  "enrollmentToken": "String",
  "qrCodeContent": "String",
  "qrCodeImage": {
    "@odata.type": "microsoft.graph.mimeContent",
    "type": "String",
    "value": "binary"
  }
}
```




