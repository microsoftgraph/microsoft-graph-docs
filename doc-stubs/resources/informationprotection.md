---
title: "informationProtection resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# informationProtection resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List informationProtections](../api/informationprotection-list.md)|[informationProtection](../resources/informationprotection.md) collection|Get a list of the [informationProtection](../resources/informationprotection.md) objects and their properties.|
|[Create informationProtection](../api/informationprotection-create.md)|[informationProtection](../resources/informationprotection.md)|Create a new [informationProtection](../resources/informationprotection.md) object.|
|[Get informationProtection](../api/informationprotection-get.md)|[informationProtection](../resources/informationprotection.md)|Read the properties and relationships of an [informationProtection](../resources/informationprotection.md) object.|
|[Update informationProtection](../api/informationprotection-update.md)|[informationProtection](../resources/informationprotection.md)|Update the properties of an [informationProtection](../resources/informationprotection.md) object.|
|[Delete informationProtection](../api/informationprotection-delete.md)|None|Deletes an [informationProtection](../resources/informationprotection.md) object.|
|[signDigest](../api/informationprotection-signdigest.md)|[signingResult](../resources/signingresult.md)|**TODO: Add Description**|
|[verifySignature](../api/informationprotection-verifysignature.md)|[verificationResult](../resources/verificationresult.md)|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|bitlocker|[bitlocker](../resources/bitlocker.md)|**TODO: Add Description**|
|dataLossPreventionPolicies|[dataLossPreventionPolicy](../resources/datalosspreventionpolicy.md) collection|**TODO: Add Description**|
|policy|[informationProtectionPolicy](../resources/informationprotectionpolicy.md)|**TODO: Add Description**|
|sensitivityLabels|[sensitivityLabel](../resources/sensitivitylabel.md) collection|**TODO: Add Description**|
|sensitivityPolicySettings|[sensitivityPolicySettings](../resources/sensitivitypolicysettings.md)|**TODO: Add Description**|
|threatAssessmentRequests|[threatAssessmentRequest](../resources/threatassessmentrequest.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.informationProtection",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.informationProtection",
  "id": "String (identifier)"
}
```

