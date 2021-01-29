---
title: "userAttributeValuesItem resource type"
description: "Used to populate the values for a user flow attribute within a user flow when there are multiple selections to choose from."
author: "jkdouglas"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# userAttributeValuesItem resource type

Namespace: microsoft.graph

Used to populate the values for a user flow attribute within a user flow when there are multiple selections to choose from. userAttributeValuesItem is applicable to the userInputTypes `radioSingleSelect`, `dropdownSingleSelect`, and `checkboxMultiSelect` for an [identityUserFlowAttributeAssignment](..\resources\identityuserflowattributeassignment.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|isDefault|Boolean|Used to set the value as the default.|
|name|String|The display name of the property displayed to the end user in the user flow.|
|value|String|The value that is set when this item is selected.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userAttributeValuesItem"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.userAttributeValuesItem",
  "name": "String",
  "value": "String",
  "isDefault": "Boolean"
}
```
