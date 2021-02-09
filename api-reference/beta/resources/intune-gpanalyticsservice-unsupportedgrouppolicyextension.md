---
title: "unsupportedGroupPolicyExtension resource type"
description: "Unsupported Group Policy Extension."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# unsupportedGroupPolicyExtension resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Unsupported Group Policy Extension.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List unsupportedGroupPolicyExtensions](../api/intune-gpanalyticsservice-unsupportedgrouppolicyextension-list.md)|[unsupportedGroupPolicyExtension](../resources/intune-gpanalyticsservice-unsupportedgrouppolicyextension.md) collection|List properties and relationships of the [unsupportedGroupPolicyExtension](../resources/intune-gpanalyticsservice-unsupportedgrouppolicyextension.md) objects.|
|[Get unsupportedGroupPolicyExtension](../api/intune-gpanalyticsservice-unsupportedgrouppolicyextension-get.md)|[unsupportedGroupPolicyExtension](../resources/intune-gpanalyticsservice-unsupportedgrouppolicyextension.md)|Read properties and relationships of the [unsupportedGroupPolicyExtension](../resources/intune-gpanalyticsservice-unsupportedgrouppolicyextension.md) object.|
|[Create unsupportedGroupPolicyExtension](../api/intune-gpanalyticsservice-unsupportedgrouppolicyextension-create.md)|[unsupportedGroupPolicyExtension](../resources/intune-gpanalyticsservice-unsupportedgrouppolicyextension.md)|Create a new [unsupportedGroupPolicyExtension](../resources/intune-gpanalyticsservice-unsupportedgrouppolicyextension.md) object.|
|[Delete unsupportedGroupPolicyExtension](../api/intune-gpanalyticsservice-unsupportedgrouppolicyextension-delete.md)|None|Deletes a [unsupportedGroupPolicyExtension](../resources/intune-gpanalyticsservice-unsupportedgrouppolicyextension.md).|
|[Update unsupportedGroupPolicyExtension](../api/intune-gpanalyticsservice-unsupportedgrouppolicyextension-update.md)|[unsupportedGroupPolicyExtension](../resources/intune-gpanalyticsservice-unsupportedgrouppolicyextension.md)|Update the properties of a [unsupportedGroupPolicyExtension](../resources/intune-gpanalyticsservice-unsupportedgrouppolicyextension.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Not yet documented|
|settingScope|[groupPolicySettingScope](../resources/intune-gpanalyticsservice-grouppolicysettingscope.md)|Setting Scope of the unsupported extension. Possible values are: `unknown`, `device`, `user`.|
|namespaceUrl|String|Namespace Url of the unsupported extension.|
|extensionType|String|ExtensionType of the unsupported extension.|
|nodeName|String|Node name of the unsupported extension.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unsupportedGroupPolicyExtension"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unsupportedGroupPolicyExtension",
  "id": "String (identifier)",
  "settingScope": "String",
  "namespaceUrl": "String",
  "extensionType": "String",
  "nodeName": "String"
}
```




