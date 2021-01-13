---
title: "mdmWindowsInformationProtectionPolicyPolicySetItem resource type"
description: "A class containing the properties used for mdm windows information protection policy PolicySetItem."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# mdmWindowsInformationProtectionPolicyPolicySetItem resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A class containing the properties used for mdm windows information protection policy PolicySetItem.


Inherits from [policySetItem](../resources/intune-policyset-policysetitem.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List mdmWindowsInformationProtectionPolicyPolicySetItems](../api/intune-policyset-mdmwindowsinformationprotectionpolicypolicysetitem-list.md)|[mdmWindowsInformationProtectionPolicyPolicySetItem](../resources/intune-policyset-mdmwindowsinformationprotectionpolicypolicysetitem.md) collection|List properties and relationships of the [mdmWindowsInformationProtectionPolicyPolicySetItem](../resources/intune-policyset-mdmwindowsinformationprotectionpolicypolicysetitem.md) objects.|
|[Get mdmWindowsInformationProtectionPolicyPolicySetItem](../api/intune-policyset-mdmwindowsinformationprotectionpolicypolicysetitem-get.md)|[mdmWindowsInformationProtectionPolicyPolicySetItem](../resources/intune-policyset-mdmwindowsinformationprotectionpolicypolicysetitem.md)|Read properties and relationships of the [mdmWindowsInformationProtectionPolicyPolicySetItem](../resources/intune-policyset-mdmwindowsinformationprotectionpolicypolicysetitem.md) object.|
|[Create mdmWindowsInformationProtectionPolicyPolicySetItem](../api/intune-policyset-mdmwindowsinformationprotectionpolicypolicysetitem-create.md)|[mdmWindowsInformationProtectionPolicyPolicySetItem](../resources/intune-policyset-mdmwindowsinformationprotectionpolicypolicysetitem.md)|Create a new [mdmWindowsInformationProtectionPolicyPolicySetItem](../resources/intune-policyset-mdmwindowsinformationprotectionpolicypolicysetitem.md) object.|
|[Delete mdmWindowsInformationProtectionPolicyPolicySetItem](../api/intune-policyset-mdmwindowsinformationprotectionpolicypolicysetitem-delete.md)|None|Deletes a [mdmWindowsInformationProtectionPolicyPolicySetItem](../resources/intune-policyset-mdmwindowsinformationprotectionpolicypolicysetitem.md).|
|[Update mdmWindowsInformationProtectionPolicyPolicySetItem](../api/intune-policyset-mdmwindowsinformationprotectionpolicypolicysetitem-update.md)|[mdmWindowsInformationProtectionPolicyPolicySetItem](../resources/intune-policyset-mdmwindowsinformationprotectionpolicypolicysetitem.md)|Update the properties of a [mdmWindowsInformationProtectionPolicyPolicySetItem](../resources/intune-policyset-mdmwindowsinformationprotectionpolicypolicysetitem.md) object.|

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
  "@odata.type": "microsoft.graph.mdmWindowsInformationProtectionPolicyPolicySetItem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mdmWindowsInformationProtectionPolicyPolicySetItem",
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




