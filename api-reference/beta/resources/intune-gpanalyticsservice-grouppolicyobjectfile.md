---
title: "groupPolicyObjectFile resource type"
description: "The Group Policy Object file uploaded by admin."
author: "rolyon"
localization_priority: Normal
ms.prod: "Intune"
doc_type: resourcePageType
---

# groupPolicyObjectFile resource type

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The Group Policy Object file uploaded by admin.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|ouDistinguishedName|String|The distinguished name of the OU.|
|content|String|The Group Policy Object file content.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.groupPolicyObjectFile"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.groupPolicyObjectFile",
  "ouDistinguishedName": "String",
  "content": "String"
}
```



