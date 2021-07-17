---
title: "azureADRegistrationPolicy resource type"
description: "Represents the policy scope of an Active Directory tenant that controls device registration using Azure AD registration."
author: "spunukol"
localization_priority: Normal
ms.prod: "directory-management"
doc_type: resourcePageType
---
# azureADRegistrationPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the policy scope of the Azure Active Directory tenant that controls the ability for users and groups to register device identities to your organization using Azure AD registered.

## Methods

| Method | Return Type | Description |
| --- | --- | --- |
| [Get deviceRegistrationPolicy](../api/deviceregistrationpolicy-get.md) | [deviceRegistrationPolicy resource type](deviceregistrationpolicy.md) | Read the properties of a **deviceRegistrationPolicy** object. |
| [Update deviceRegistrationPolicy](../api/deviceregistrationpolicy-update.md) | [deviceRegistrationPolicy resource type](deviceregistrationpolicy.md) | Update the properties of a **deviceRegistrationPolicy** object. |

## Properties

|Property|Type|Description|
|:---|:---|:---|
|allowedGroups|String collection| The group identifiers that are in the scope of the policy. Required when used with the `selected` value in the `appliesTo` property. |
|allowedUsers|String collection| The user identifiers that are in the scope of the policy. Required when used with the `selected` value in the `appliesTo` property. |
|appliesTo|policyScope| Specifies whether to block or allow fine-grained control of the policy scope. Possible values are: `none`, `all`, `selected`, `unknownFutureValue`. Required. |
|isAdminConfigurable|Boolean|Specifies whether this `policyScope` is configurable by the admin. Read-only.|

* The default value is **`all`** at time of policy creation.
* You must have at least one **`allowedGroup`** or **`allowedUser`** when using **`selected`**.
* The value of **`all`** or **`none`** will remove all values in **`allowedGroups`** and **`allowedUsers`**.
* The values defaults to **`all`** when **`isAdminConfigurable`** is set to **`false`**. This is when an admin has enabled Intune(MEM) application to manage devices in Azure Active Directory.

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.azureADRegistrationPolicy"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.azureADRegistrationPolicy",
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
