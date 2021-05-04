---
title: "azureADDevice resource type"
description: "Represents a device in Azure Active Directory (Azure AD) that is registered with the deployment service."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: resourcePageType
---

# azureADDevice resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a device in Azure Active Directory (Azure AD) that is registered with the deployment service.

An Azure AD device is automatically created through one of the following methods:
* [updatableAsset: enrollAssets](../api/windowsupdates-updatableasset-enrollassets.md)
* [updatableAsset: enrollAssetsById](../api/windowsupdates-updatableasset-enrollassetsbyid.md)
* [deploymentAudience: updateAudience](../api/windowsupdates-deploymentaudience-updateaudience.md)
* [deploymentAudience: updateAudienceById](../api/windowsupdates-deploymentaudience-updateaudiencebyid.md)
* [updatableAssetGroup: addMembers](../api/windowsupdates-updatableassetgroup-addmembers.md)
* [updatableAssetGroup: addMembersById](../api/windowsupdates-updatableassetgroup-addmembersbyid.md)

Inherits from [updatableAsset](../resources/windowsupdates-updatableasset.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List azureADDevice resources](../api/windowsupdates-updates-list-updatableassets-azureaddevice.md)|[microsoft.graph.windowsUpdates.azureADDevice](../resources/windowsupdates-azureaddevice.md) collection|Get a list of the [azureADDevice](../resources/windowsupdates-azureaddevice.md) objects and their properties.|
|[Get azureADDevice](../api/windowsupdates-azureaddevice-get.md)|[microsoft.graph.windowsUpdates.azureADDevice](../resources/windowsupdates-azureaddevice.md)|Read the properties and relationships of an [azureADDevice](../resources/windowsupdates-azureaddevice.md) object.|
|[Delete azureADDevice](../api/windowsupdates-azureaddevice-delete.md)|None|Delete an [azureADDevice](../resources/windowsupdates-azureaddevice.md) object.|
|[Enroll azureADDevice resources in management](../api/windowsupdates-updatableasset-enrollassets.md)|None|Enroll [azureADDevice](../resources/windowsupdates-azureaddevice.md) resources in update management by the deployment service.|
|[Enroll azureADDevice resources in management (by ID)](../api/windowsupdates-updatableasset-enrollassetsbyid.md)|None|Enroll [azureADDevice](../resources/windowsupdates-azureaddevice.md) resources in update management by the deployment service.|
|[Unenroll azureADDevice resources from management](../api/windowsupdates-updatableasset-unenrollassets.md)|None|Unenroll [azureADDevice](../resources/windowsupdates-azureaddevice.md) resources from update management by the deployment service.|
|[Unenroll azureADDevice resources from management (by ID)](../api/windowsupdates-updatableasset-unenrollassetsbyid.md)|None|Unenroll [azureADDevice](../resources/windowsupdates-azureaddevice.md) resources from update management by the deployment service.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|enrollments|[microsoft.graph.windowsUpdates.updatableAssetEnrollment](../resources/windowsupdates-updatableassetenrollment.md) collection|Specifies areas of the service in which the device is enrolled. Read-only. Returned by default.|
|errors|[microsoft.graph.windowsUpdates.updatableAssetError](../resources/windowsupdates-updatableasseterror.md) collection|Specifies any errors that prevent the device from being enrolled in update management or receving deployed content. Read-only. Returned by default.|
|id|String|An identifier for the device. Key. Not nullable. Read-only. Returned by default. Inherited from [updatableAsset](../resources/windowsupdates-updatableasset.md)|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.azureADDevice",
  "baseType": "microsoft.graph.windowsUpdates.updatableAsset",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.azureADDevice",
  "id": "String (identifier)",
  "errors": [
    {
      "@odata.type": "microsoft.graph.windowsUpdates.azureADDeviceRegistrationError"
    }
  ],
  "enrollments": [
    {
      "@odata.type": "microsoft.graph.windowsUpdates.updateManagementEnrollment"
    }
  ]
}
```

