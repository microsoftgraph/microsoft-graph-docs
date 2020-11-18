---
title: "macOSAzureAdSingleSignOnExtension resource type"
description: "Represents an Azure AD-type Single Sign-On extension profile for macOS devices."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# macOSAzureAdSingleSignOnExtension resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents an Azure AD-type Single Sign-On extension profile for macOS devices.


Inherits from [macOSSingleSignOnExtension](../resources/intune-deviceconfig-macossinglesignonextension.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|enableSharedDeviceMode|Boolean|Enables or disables shared device mode.|
|bundleIdAccessControlList|String collection|An optional list of additional bundle IDs allowed to use the AAD extension for single sign-on.|
|configurations|[keyTypedValuePair](../resources/intune-deviceconfig-keytypedvaluepair.md) collection|Gets or sets a list of typed key-value pairs used to configure Credential-type profiles. This collection can contain a maximum of 500 elements.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.macOSAzureAdSingleSignOnExtension"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.macOSAzureAdSingleSignOnExtension",
  "enableSharedDeviceMode": true,
  "bundleIdAccessControlList": [
    "String"
  ],
  "configurations": [
    {
      "@odata.type": "microsoft.graph.keyStringValuePair",
      "key": "String",
      "value": "String"
    }
  ]
}
```




