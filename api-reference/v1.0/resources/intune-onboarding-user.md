---
title: "user resource type"
description: "Not yet documented"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# user resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Not yet documented

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List users](../api/intune-onboarding-user-list.md)|[user](../resources/intune-onboarding-user.md) collection|List properties and relationships of the [user](../resources/intune-onboarding-user.md) objects.|
|[Get user](../api/intune-onboarding-user-get.md)|[user](../resources/intune-onboarding-user.md)|Read properties and relationships of the [user](../resources/intune-onboarding-user.md) object.|
|[Create user](../api/intune-onboarding-user-create.md)|[user](../resources/intune-onboarding-user.md)|Create a new [user](../resources/intune-onboarding-user.md) object.|
|[Delete user](../api/intune-onboarding-user-delete.md)|None|Deletes a [user](../resources/intune-onboarding-user.md).|
|[Update user](../api/intune-onboarding-user-update.md)|[user](../resources/intune-onboarding-user.md)|Update the properties of a [user](../resources/intune-onboarding-user.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier of the user.|
|deviceEnrollmentLimit|Int32|The limit on the maximum number of devices that the user is permitted to enroll. Allowed values are 5 or 1000.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.user"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.user",
  "id": "String (identifier)",
  "deviceEnrollmentLimit": 1024
}
```




