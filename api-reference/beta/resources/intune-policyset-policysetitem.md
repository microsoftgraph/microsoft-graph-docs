---
title: "policySetItem resource type"
description: "A class containing the properties used for PolicySet Item."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# policySetItem resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A class containing the properties used for PolicySet Item.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List policySetItems](../api/intune-policyset-policysetitem-list.md)|[policySetItem](../resources/intune-policyset-policysetitem.md) collection|List properties and relationships of the [policySetItem](../resources/intune-policyset-policysetitem.md) objects.|
|[Get policySetItem](../api/intune-policyset-policysetitem-get.md)|[policySetItem](../resources/intune-policyset-policysetitem.md)|Read properties and relationships of the [policySetItem](../resources/intune-policyset-policysetitem.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the MobileAppPolicySetItem.|
|createdDateTime|DateTimeOffset|Creation time of the PolicySetItem.|
|lastModifiedDateTime|DateTimeOffset|Last modified time of the PolicySetItem.|
|payloadId|String|PayloadId of the PolicySetItem.|
|itemType|String|policySetType of the PolicySetItem.|
|displayName|String|DisplayName of the PolicySetItem.|
|status|[policySetStatus](../resources/intune-policyset-policysetstatus.md)|Status of the PolicySetItem. Possible values are: `unknown`, `validating`, `partialSuccess`, `success`, `error`, `notAssigned`.|
|errorCode|[errorCode](../resources/intune-policyset-errorcode.md)|Error code if any occured. Possible values are: `noError`, `unauthorized`, `notFound`, `deleted`.|
|guidedDeploymentTags|String collection|Tags of the guided deployment|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.policySetItem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.policySetItem",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "payloadId": "String",
  "itemType": "String",
  "displayName": "String",
  "status": "String",
  "errorCode": "String",
  "guidedDeploymentTags": [
    "String"
  ]
}
```




