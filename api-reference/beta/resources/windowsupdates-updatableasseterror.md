---
title: "updatableAssetError resource type"
description: "An abstract type that represents an error which prevents the deployment service from enrolling an azureADDevice in update management, or deploying content to the device"
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: resourcePageType
---

# updatableAssetError resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that represents an error which prevents the deployment service from enrolling an [azureADDevice](../resources/windowsupdates-azureaddevice.md) in update management, or deploying content to the device. 

All updatable asset errors are of the derived type, [azureADDeviceRegistrationError](../resources/windowsupdates-azureaddeviceregistrationerror.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.updatableAssetError"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.updatableAssetError"
}
```

