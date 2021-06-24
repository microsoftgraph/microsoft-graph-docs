---
title: "azureADDeviceRegistrationError resource type"
description: "An error in the registration process of an Azure AD device that prevents the service from enrolling the device in update management or deploying content to the device."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: resourcePageType
---

# azureADDeviceRegistrationError resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An error in the registration process of an [Azure AD device](../resources/windowsupdates-azureaddevice.md) that prevents the service from enrolling the device in update management or deploying content to the device.

Inherits from [updatableAssetError](../resources/windowsupdates-updatableasseterror.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|reason|microsoft.graph.windowsUpdates.azureADDeviceRegistrationErrorReason|The reason why the registration encountered an error. Possible values are: `invalidGlobalDeviceId`, `invalidAzureADDeviceId`, `missingTrustType`, `invalidAzureADJoin`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.azureADDeviceRegistrationError"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.azureADDeviceRegistrationError",
  "reason": "String"
}
```

