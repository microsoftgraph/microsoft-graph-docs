---
title: "iosLobAppProvisioningConfigurationPolicySetItem resource type"
description: "A class containing the properties used for iOS lob app provisioning configuration PolicySetItem."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# iosLobAppProvisioningConfigurationPolicySetItem resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A class containing the properties used for iOS lob app provisioning configuration PolicySetItem.


Inherits from [policySetItem](../resources/intune-policyset-policysetitem.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List iosLobAppProvisioningConfigurationPolicySetItems](../api/intune-policyset-ioslobappprovisioningconfigurationpolicysetitem-list.md)|[iosLobAppProvisioningConfigurationPolicySetItem](../resources/intune-policyset-ioslobappprovisioningconfigurationpolicysetitem.md) collection|List properties and relationships of the [iosLobAppProvisioningConfigurationPolicySetItem](../resources/intune-policyset-ioslobappprovisioningconfigurationpolicysetitem.md) objects.|
|[Get iosLobAppProvisioningConfigurationPolicySetItem](../api/intune-policyset-ioslobappprovisioningconfigurationpolicysetitem-get.md)|[iosLobAppProvisioningConfigurationPolicySetItem](../resources/intune-policyset-ioslobappprovisioningconfigurationpolicysetitem.md)|Read properties and relationships of the [iosLobAppProvisioningConfigurationPolicySetItem](../resources/intune-policyset-ioslobappprovisioningconfigurationpolicysetitem.md) object.|
|[Create iosLobAppProvisioningConfigurationPolicySetItem](../api/intune-policyset-ioslobappprovisioningconfigurationpolicysetitem-create.md)|[iosLobAppProvisioningConfigurationPolicySetItem](../resources/intune-policyset-ioslobappprovisioningconfigurationpolicysetitem.md)|Create a new [iosLobAppProvisioningConfigurationPolicySetItem](../resources/intune-policyset-ioslobappprovisioningconfigurationpolicysetitem.md) object.|
|[Delete iosLobAppProvisioningConfigurationPolicySetItem](../api/intune-policyset-ioslobappprovisioningconfigurationpolicysetitem-delete.md)|None|Deletes a [iosLobAppProvisioningConfigurationPolicySetItem](../resources/intune-policyset-ioslobappprovisioningconfigurationpolicysetitem.md).|
|[Update iosLobAppProvisioningConfigurationPolicySetItem](../api/intune-policyset-ioslobappprovisioningconfigurationpolicysetitem-update.md)|[iosLobAppProvisioningConfigurationPolicySetItem](../resources/intune-policyset-ioslobappprovisioningconfigurationpolicysetitem.md)|Update the properties of a [iosLobAppProvisioningConfigurationPolicySetItem](../resources/intune-policyset-ioslobappprovisioningconfigurationpolicysetitem.md) object.|

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

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.iosLobAppProvisioningConfigurationPolicySetItem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.iosLobAppProvisioningConfigurationPolicySetItem",
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
  ]
}
```




