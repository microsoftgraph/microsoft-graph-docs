---
title: "azureAdJoinPolicy resource type"
description: "Represents the policy scope of an Active Directory tenant that controls device registration using Azure AD Join."
author: "spunukol"
localization_priority: Normal
ms.prod: "directory-management"
doc_type: resourcePageType
---
# azureAdJoinPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the policy scope of the Azure Active Directory tenant that controls the ability for users and groups to register device identities to your organization using Azure AD Join.

## Methods

| Method | Return Type | Description |
| --- | --- | --- |
| [Get deviceRegistrationPolicy](../api/deviceregistrationpolicy-get.md) | [azureAdJoinPolicy resource type](azureadjoinpolicy.md) | Read the properties of a **deviceRegistrationPolicy** object. |
| [Update deviceRegistrationPolicy](../api/deviceregistrationpolicy-update.md) | [azureAdJoinPolicy resource type](azureadjoinpolicy.md) | Update the properties of a **deviceRegistrationPolicy** object. |

## Properties

|Property|Type|Description|
|:---|:---|:---|
|allowedGroups|String collection|Group IDs in scope of policy. Required when used with the `selected` value in the `appliesTo` property.|
|allowedUsers|String collection|User IDs in scope of policy. Required when used with the `selected` value in the `appliesTo` property.|
|appliesTo|policyScope|Specifies whether to block, allow or fine-grained control of the policy scope. Possible values are: `none`, `all`, `selected`, `unknownFutureValue`. Required.|
|isAdminConfigurable|Boolean|Specifies whether this `policyScope` is configurable by the admin. Read-only.|

* The default value is **`all`** at time of policy creation.
* You must have at least one **`allowedGroup`** or **`allowedUser`** when using **`selected`**.
* The value of **`all`** or **`none`** will remove all values in **`allowedGroups`** and **`allowedUsers`**.

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.azureAdJoinPolicy"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.azureAdJoinPolicy",
  "appliesTo": "String",
  "isAdminConfigurable": "Boolean",
  "allowedUsers": [
    "String"
  ],
  "allowedGroups": [
    "String"
  ]
}
```
