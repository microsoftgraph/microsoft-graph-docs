---
title: "mobilityManagementPolicy resource type"
description: "A mobility management policy represents an auto-enrollment policy for a mobility management application configured in Azure AD."
author: "ravennMSFT"
localization_priority: Normal
ms.prod: "directory-management"
doc_type: resourcePageType
---

# mobilityManagementPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In Azure AD, a mobility management policy represents an auto-enrollment configuration for a mobility management (MDM or MAM) application. These policies are only applicable to devices based on Windows 10 OS and its derivatives (Surface Hub, Hololens etc.). [Auto-enrollment](https://docs.microsoft.com/windows/client-management/mdm/azure-ad-and-microsoft-intune-automatic-mdm-enrollment-in-the-new-portal) enables organizations to automatically enroll devices into their chosen mobility management application as part of [Azure AD join](https://docs.microsoft.com/azure/active-directory/devices/concept-azure-ad-join) or [Azure AD register](https://docs.microsoft.com/azure/active-directory/devices/concept-azure-ad-register) process on Windows 10 devices.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List mobileDeviceManagementPolicies](../api/mobiledevicemanagementpolicies-list.md)|[mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) collection|Get a list of the [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) objects and their properties for mobile device management applications.|
|[Get mobileDeviceManagementPolicy](../api/mobiledevicemanagementpolicies-get.md)|[mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md)|Read the properties and relationships of a [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) object for a mobile device management application.|
|[Update mobileDeviceManagementPolicy](../api/mobiledevicemanagementpolicies-update.md)|None|Update the properties of a [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) object for a mobile device management application.|
|[List includedGroups of mobileDeviceManagementPolicy](../api/mobiledevicemanagementpolicies-list-includedgroups.md)|[group](../resources/group.md) collection|List included groups for a [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) object for a mobile device management application.|
|[Add group to mobileDeviceManagementPolicy](../api/mobiledevicemanagementpolicies-post-includedgroups.md)|None|Add a group to the [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) object for a mobile device management application.|
|[Delete group from mobileDeviceManagementPolicy](../api/mobiledevicemanagementpolicies-delete-includedgroups.md)|None|Delete a group from the [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) object for a mobile device management application.|
|[List mobileAppManagementPolicies](../api/mobileappmanagementpolicies-list.md)|[mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) collection|Get a list of the [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) objects and their properties for mobile app management applications.|
|[Get mobileAppManagementPolicy](../api/mobileappmanagementpolicies-get.md)|[mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md)|Read the properties and relationships of a [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) object for a mobile app management application.|
|[Update mobileAppManagementPolicy](../api/mobileappmanagementpolicies-update.md)|None|Update the properties of a [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) object for a mobile app management application.|
|[List includedGroups of mobileAppManagementPolicy](../api/mobileappmanagementpolicies-list-includedgroups.md)|[group](../resources/group.md) collection|List included groups for a [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) object for a mobile app management application.|
|[Add group to mobileAppManagementPolicy](../api/mobileappmanagementpolicies-post-includedgroups.md)|None|Add a group to the [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) object for a mobile app management application.
|[Delete group from mobileAppManagementPolicy](../api/mobileappmanagementpolicies-delete-includedgroups.md)|None|Delete a group from the [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) object for a mobile app management application.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|appliesTo|policyScope|Indicates the user scope of the mobility management policy. Possible values are: `none`, `all`, `selected`.|
|complianceUrl|String|Compliance URL of the mobility management application.|
|description|String|Description of the mobility management application.|
|discoveryUrl|String|Discovery URL of the mobility management application.|
|displayName|String|Display name of the mobility management application.|
|id|String|Object Id of the mobility management application.|
|termsOfUseUrl|String|Terms of Use URL of the mobility management application.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|includedGroups|[group](../resources/group.md) collection|Azure AD groups under the scope of the mobility management application if appliesTo is `selected`|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobilityManagementPolicy",
  "openType": false
}
-->

``` json
{
  "id": "String (identifier)",
  "appliesTo": "String",
  "complianceUrl": "String",
  "description": "String",
  "discoveryUrl": "String",
  "displayName": "String",
  "termsOfUseUrl": "String"
}
```

<!-- uuid: 5c98f801-d1c4-44eb-ac11-f72b6754deda
2020-03-23T22:34:45.203Z -->
<!-- {
  "type": "#page.annotation",
  "description": "mobilityManagementPolicy resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}
-->
