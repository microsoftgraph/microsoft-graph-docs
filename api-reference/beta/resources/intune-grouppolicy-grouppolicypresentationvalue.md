---
title: "groupPolicyPresentationValue resource type"
description: "The base presentation value entity that stores the value for a single group policy presentation."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# groupPolicyPresentationValue resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The base presentation value entity that stores the value for a single group policy presentation.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List groupPolicyPresentationValues](../api/intune-grouppolicy-grouppolicypresentationvalue-list.md)|[groupPolicyPresentationValue](../resources/intune-grouppolicy-grouppolicypresentationvalue.md) collection|List properties and relationships of the [groupPolicyPresentationValue](../resources/intune-grouppolicy-grouppolicypresentationvalue.md) objects.|
|[Get groupPolicyPresentationValue](../api/intune-grouppolicy-grouppolicypresentationvalue-get.md)|[groupPolicyPresentationValue](../resources/intune-grouppolicy-grouppolicypresentationvalue.md)|Read properties and relationships of the [groupPolicyPresentationValue](../resources/intune-grouppolicy-grouppolicypresentationvalue.md) object.|
|[Create groupPolicyPresentationValue](../api/intune-grouppolicy-grouppolicypresentationvalue-create.md)|[groupPolicyPresentationValue](../resources/intune-grouppolicy-grouppolicypresentationvalue.md)|Create a new [groupPolicyPresentationValue](../resources/intune-grouppolicy-grouppolicypresentationvalue.md) object.|
|[Delete groupPolicyPresentationValue](../api/intune-grouppolicy-grouppolicypresentationvalue-delete.md)|None|Deletes a [groupPolicyPresentationValue](../resources/intune-grouppolicy-grouppolicypresentationvalue.md).|
|[Update groupPolicyPresentationValue](../api/intune-grouppolicy-grouppolicypresentationvalue-update.md)|[groupPolicyPresentationValue](../resources/intune-grouppolicy-grouppolicypresentationvalue.md)|Update the properties of a [groupPolicyPresentationValue](../resources/intune-grouppolicy-grouppolicypresentationvalue.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|lastModifiedDateTime|DateTimeOffset|The date and time the object was last modified.|
|createdDateTime|DateTimeOffset|The date and time the object was created.|
|id|String|Key of the entity.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|definitionValue|[groupPolicyDefinitionValue](../resources/intune-grouppolicy-grouppolicydefinitionvalue.md)|The group policy definition value associated with the presentation value.|
|presentation|[groupPolicyPresentation](../resources/intune-grouppolicy-grouppolicypresentation.md)|The group policy presentation associated with the presentation value.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.groupPolicyPresentationValue"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.groupPolicyPresentationValue",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)"
}
```




