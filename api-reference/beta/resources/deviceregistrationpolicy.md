---
title: "deviceRegistrationPolicy resource type"
description: "Represents the policy scope of the Azure Active Directory tenant that control quota restrictions, additional authentication, and authorization policies."
author: "spunukol"
localization_priority: Normal
ms.prod: "directory-management"
doc_type: resourcePageType
---
# deviceRegistrationPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the policy scope of the Azure Active Directory tenant that control quota restrictions, additional authentication, and authorization policies to register device identities to your organization.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get deviceRegistrationPolicy](../api/deviceregistrationpolicy-get.md)|[deviceRegistrationPolicy](../resources/deviceregistrationpolicy.md)|Read the properties of a [deviceRegistrationPolicy](../resources/deviceregistrationpolicy.md) object.|
|[Update deviceRegistrationPolicy](../api/deviceregistrationpolicy-update.md)|[deviceRegistrationPolicy](../resources/deviceregistrationpolicy.md)|Update the properties of a [deviceRegistrationPolicy](../resources/deviceregistrationpolicy.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|azureADJoin|[azureAdJoinPolicy](../resources/azureadjoinpolicy.md)|Specifies the authorization policy for controlling registration of new devices using Azure AD Join within your organization. For more information, see [What is a device identity?](/azure/active-directory/devices/overview).|
|azureADRegistration|[azureADRegistrationPolicy](../resources/azureadregistrationpolicy.md)|Specifies the authorization policy for controlling registration of new devices using Azure AD registered within your organization. For more information, see [What is a device identity?](/azure/active-directory/devices/overview).|
|description|String|Description at the time of policy creation. Read-only.|
|displayName|String|Name at the time of policy creation. Read-only.|
|id|String| Identifier of the policy at the time of policy creation. Read-only.|
|multiFactorAuthConfiguration|multiFactorAuthConfiguration|Specifies the authentication policy for a user to complete registration using Azure AD Join or Azure AD registered within your organization. Possible values are: `notRequired`, `required`,`unknownFutureValue`.|
|userDeviceQuota|Int32|Specifies the maximum number of devices that a user can have within your organization before blocking new device registrations.|

* The default value of `multiFactorAuthConfiguration` is **`notRequired`** at the time of policy creation.
* `multiFactorAuthConfiguration` resets to **`notRequired`** if not used in update of policy.
* The default value of `userDeviceQuote` is set to **`50`** at the time of policy creation.
* `userDeviceQuote` resets to **`0`** if not used in update of policy. This indicates no devices are allowed to join per user.

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceRegistrationPolicy",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceRegistrationPolicy",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "userDeviceQuota": "Integer",
  "multiFactorAuthConfiguration": "String",
  "azureADRegistration": {
    "@odata.type": "microsoft.graph.azureADRegistrationPolicy"
  },
  "azureADJoin": {
    "@odata.type": "microsoft.graph.azureAdJoinPolicy"
  }
}
```
