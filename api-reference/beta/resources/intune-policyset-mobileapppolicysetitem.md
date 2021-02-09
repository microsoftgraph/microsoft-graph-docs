---
title: "mobileAppPolicySetItem resource type"
description: "A class containing the properties used for mobile app PolicySetItem."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# mobileAppPolicySetItem resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A class containing the properties used for mobile app PolicySetItem.


Inherits from [policySetItem](../resources/intune-policyset-policysetitem.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List mobileAppPolicySetItems](../api/intune-policyset-mobileapppolicysetitem-list.md)|[mobileAppPolicySetItem](../resources/intune-policyset-mobileapppolicysetitem.md) collection|List properties and relationships of the [mobileAppPolicySetItem](../resources/intune-policyset-mobileapppolicysetitem.md) objects.|
|[Get mobileAppPolicySetItem](../api/intune-policyset-mobileapppolicysetitem-get.md)|[mobileAppPolicySetItem](../resources/intune-policyset-mobileapppolicysetitem.md)|Read properties and relationships of the [mobileAppPolicySetItem](../resources/intune-policyset-mobileapppolicysetitem.md) object.|
|[Create mobileAppPolicySetItem](../api/intune-policyset-mobileapppolicysetitem-create.md)|[mobileAppPolicySetItem](../resources/intune-policyset-mobileapppolicysetitem.md)|Create a new [mobileAppPolicySetItem](../resources/intune-policyset-mobileapppolicysetitem.md) object.|
|[Delete mobileAppPolicySetItem](../api/intune-policyset-mobileapppolicysetitem-delete.md)|None|Deletes a [mobileAppPolicySetItem](../resources/intune-policyset-mobileapppolicysetitem.md).|
|[Update mobileAppPolicySetItem](../api/intune-policyset-mobileapppolicysetitem-update.md)|[mobileAppPolicySetItem](../resources/intune-policyset-mobileapppolicysetitem.md)|Update the properties of a [mobileAppPolicySetItem](../resources/intune-policyset-mobileapppolicysetitem.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the MobileAppPolicySetItem. Inherited from [policySetItem](../resources/intune-policyset-policysetitem.md)|
|createdDateTime|DateTimeOffset|Creation time of the PolicySetItem. Inherited from [policySetItem](../resources/intune-policyset-policysetitem.md)|
|lastModifiedDateTime|DateTimeOffset|Last modified time of the PolicySetItem. Inherited from [policySetItem](../resources/intune-policyset-policysetitem.md)|
|payloadId|String|PayloadId of the PolicySetItem. Inherited from [policySetItem](../resources/intune-policyset-policysetitem.md)|
|itemType|String|policySetType of the PolicySetItem. Inherited from [policySetItem](../resources/intune-policyset-policysetitem.md)|
|displayName|String|DisplayName of the PolicySetItem. Inherited from [policySetItem](../resources/intune-policyset-policysetitem.md)|
|status|[policySetStatus](../resources/intune-policyset-policysetstatus.md)|Status of the PolicySetItem. Inherited from [policySetItem](../resources/intune-policyset-policysetitem.md). Possible values are: `unknown`, `validating`, `partialSuccess`, `success`, `error`, `notAssigned`.|
|errorCode|[errorCode](../resources/intune-policyset-errorcode.md)|Error code if any occured. Inherited from [policySetItem](../resources/intune-policyset-policysetitem.md). Possible values are: `noError`, `unauthorized`, `notFound`, `deleted`.|
|guidedDeploymentTags|String collection|Tags of the guided deployment Inherited from [policySetItem](../resources/intune-policyset-policysetitem.md)|
|intent|[installIntent](../resources/intune-shared-installintent.md)|Install intent of the MobileAppPolicySetItem. Possible values are: `available`, `required`, `uninstall`, `availableWithoutEnrollment`.|
|settings|[mobileAppAssignmentSettings](../resources/intune-shared-mobileappassignmentsettings.md)|Settings of the MobileAppPolicySetItem.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobileAppPolicySetItem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mobileAppPolicySetItem",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "payloadId": "String",
  "itemType": "String",
  "displayName": "String",
  "status": "String",
  "errorCode": "String",
  "guidedDeploymentTags": [
    "String"
  ],
  "intent": "String",
  "settings": {
    "@odata.type": "microsoft.graph.iosLobAppAssignmentSettings",
    "vpnConfigurationId": "String",
    "uninstallOnDeviceRemoval": true,
    "isRemovable": true
  }
}
```




