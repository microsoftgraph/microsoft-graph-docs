---
title: "androidManagedStoreAppAssignmentSettings resource type"
description: "Contains properties used to assign an Android Managed Store mobile app to a group."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# androidManagedStoreAppAssignmentSettings resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties used to assign an Android Managed Store mobile app to a group.


Inherits from [mobileAppAssignmentSettings](../resources/intune-shared-mobileappassignmentsettings.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|androidManagedStoreAppTrackIds|String collection|The track IDs to enable for this app assignment.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.androidManagedStoreAppAssignmentSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.androidManagedStoreAppAssignmentSettings",
  "androidManagedStoreAppTrackIds": [
    "String"
  ]
}
```




