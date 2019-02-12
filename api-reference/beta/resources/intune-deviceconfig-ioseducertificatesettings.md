---
title: "iosEduCertificateSettings resource type"
description: "Trusted Root and PFX certificates for iOS EDU."
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# iosEduCertificateSettings resource type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Trusted Root and PFX certificates for iOS EDU.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|trustedRootCertificate|Binary|Trusted Root Certificate.|
|certFileName|String|File name to display in UI.|
|certificationAuthority|String|PKCS Certification Authority.|
|certificationAuthorityName|String|PKCS Certification Authority Name.|
|certificateTemplateName|String|PKCS Certificate Template Name.|
|renewalThresholdPercentage|Int32|Certificate renewal threshold percentage. Valid values 1 to 99|
|certificateValidityPeriodValue|Int32|Value for the Certificate Validity Period.|
|certificateValidityPeriodScale|[certificateValidityPeriodScale](../resources/intune-deviceconfig-certificatevalidityperiodscale.md)|Scale for the Certificate Validity Period. Possible values are: `days`, `months`, `years`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.iosEduCertificateSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.iosEduCertificateSettings",
  "trustedRootCertificate": "binary",
  "certFileName": "String",
  "certificationAuthority": "String",
  "certificationAuthorityName": "String",
  "certificateTemplateName": "String",
  "renewalThresholdPercentage": 1024,
  "certificateValidityPeriodValue": 1024,
  "certificateValidityPeriodScale": "String"
}
```




