---
title: "deviceCategory resource type"
description: "Device categories provides a way to organize your devices. Using device categories, company administrators can define their own categories that make sense to their company. These categories can then be applied to a device in the Intune Azure console or selected by a user during device enrollment. You can filter reports and create dynamic Azure Active Directory device groups based on device categories."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceCategory resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Device categories provides a way to organize your devices. Using device categories, company administrators can define their own categories that make sense to their company. These categories can then be applied to a device in the Intune Azure console or selected by a user during device enrollment. You can filter reports and create dynamic Azure Active Directory device groups based on device categories.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceCategories](../api/intune-onboarding-devicecategory-list.md)|[deviceCategory](../resources/intune-onboarding-devicecategory.md) collection|List properties and relationships of the [deviceCategory](../resources/intune-onboarding-devicecategory.md) objects.|
|[Get deviceCategory](../api/intune-onboarding-devicecategory-get.md)|[deviceCategory](../resources/intune-onboarding-devicecategory.md)|Read properties and relationships of the [deviceCategory](../resources/intune-onboarding-devicecategory.md) object.|
|[Create deviceCategory](../api/intune-onboarding-devicecategory-create.md)|[deviceCategory](../resources/intune-onboarding-devicecategory.md)|Create a new [deviceCategory](../resources/intune-onboarding-devicecategory.md) object.|
|[Delete deviceCategory](../api/intune-onboarding-devicecategory-delete.md)|None|Deletes a [deviceCategory](../resources/intune-onboarding-devicecategory.md).|
|[Update deviceCategory](../api/intune-onboarding-devicecategory-update.md)|[deviceCategory](../resources/intune-onboarding-devicecategory.md)|Update the properties of a [deviceCategory](../resources/intune-onboarding-devicecategory.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the device category. Read-only.|
|displayName|String|Display name for the device category.|
|description|String|Optional description for the device category.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceCategory"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceCategory",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String"
}
```




