---
title: "macOSFirewallApplication resource type"
description: "Represents an app in the list of macOS firewall applications"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# macOSFirewallApplication resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents an app in the list of macOS firewall applications

## Properties
|Property|Type|Description|
|:---|:---|:---|
|bundleId|String|BundleId of the application.|
|allowsIncomingConnections|Boolean|Whether or not incoming connections are allowed.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.macOSFirewallApplication"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.macOSFirewallApplication",
  "bundleId": "String",
  "allowsIncomingConnections": true
}
```




