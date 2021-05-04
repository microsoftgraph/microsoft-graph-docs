---
title: "windows10XCustomSubjectAlternativeName resource type"
description: "Base Profile Type for Authentication Certificates (SCEP or PFX Create)"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# windows10XCustomSubjectAlternativeName resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Base Profile Type for Authentication Certificates (SCEP or PFX Create)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|sanType|[subjectAlternativeNameType](../resources/intune-shared-subjectalternativenametype.md)|Custom SAN Type. Possible values are: `none`, `emailAddress`, `userPrincipalName`, `customAzureADAttribute`, `domainNameService`, `universalResourceIdentifier`.|
|name|String|Custom SAN Name|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windows10XCustomSubjectAlternativeName"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windows10XCustomSubjectAlternativeName",
  "sanType": "String",
  "name": "String"
}
```




