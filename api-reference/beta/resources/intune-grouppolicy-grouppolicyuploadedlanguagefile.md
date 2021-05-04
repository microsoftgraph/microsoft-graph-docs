---
title: "groupPolicyUploadedLanguageFile resource type"
description: "The entity represents an ADML (Administrative Template language) XML file uploaded by Administrator."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# groupPolicyUploadedLanguageFile resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The entity represents an ADML (Administrative Template language) XML file uploaded by Administrator.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|fileName|String|The file name of the uploaded ADML file.|
|languageCode|String|The language code of the uploaded ADML file.|
|content|Binary|The contents of the uploaded ADML file.|
|id|String|Key of the entity.|
|lastModifiedDateTime|DateTimeOffset|The date and time the entity was last modified.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.groupPolicyUploadedLanguageFile"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.groupPolicyUploadedLanguageFile",
  "fileName": "String",
  "languageCode": "String",
  "content": "binary",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)"
}
```




