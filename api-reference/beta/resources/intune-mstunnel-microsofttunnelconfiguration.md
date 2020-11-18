---
title: "microsoftTunnelConfiguration resource type"
description: "Entity that represents a collection of Microsoft Tunnel settings"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# microsoftTunnelConfiguration resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Entity that represents a collection of Microsoft Tunnel settings

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List microsoftTunnelConfigurations](../api/intune-mstunnel-microsofttunnelconfiguration-list.md)|[microsoftTunnelConfiguration](../resources/intune-mstunnel-microsofttunnelconfiguration.md) collection|List properties and relationships of the [microsoftTunnelConfiguration](../resources/intune-mstunnel-microsofttunnelconfiguration.md) objects.|
|[Get microsoftTunnelConfiguration](../api/intune-mstunnel-microsofttunnelconfiguration-get.md)|[microsoftTunnelConfiguration](../resources/intune-mstunnel-microsofttunnelconfiguration.md)|Read properties and relationships of the [microsoftTunnelConfiguration](../resources/intune-mstunnel-microsofttunnelconfiguration.md) object.|
|[Create microsoftTunnelConfiguration](../api/intune-mstunnel-microsofttunnelconfiguration-create.md)|[microsoftTunnelConfiguration](../resources/intune-mstunnel-microsofttunnelconfiguration.md)|Create a new [microsoftTunnelConfiguration](../resources/intune-mstunnel-microsofttunnelconfiguration.md) object.|
|[Delete microsoftTunnelConfiguration](../api/intune-mstunnel-microsofttunnelconfiguration-delete.md)|None|Deletes a [microsoftTunnelConfiguration](../resources/intune-mstunnel-microsofttunnelconfiguration.md).|
|[Update microsoftTunnelConfiguration](../api/intune-mstunnel-microsofttunnelconfiguration-update.md)|[microsoftTunnelConfiguration](../resources/intune-mstunnel-microsofttunnelconfiguration.md)|Update the properties of a [microsoftTunnelConfiguration](../resources/intune-mstunnel-microsofttunnelconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The MicrosoftTunnelConfiguration's Id|
|displayName|String|The MicrosoftTunnelConfiguration's display name|
|description|String|The MicrosoftTunnelConfiguration's description|
|network|String|The subnet that will be used to allocate virtual address for the clients|
|dnsServers|String collection|The DNS servers that will be used by the clients|
|defaultDomainSuffix|String|The Default Domain appendix that will be used by the clients|
|routesInclude|String collection|The routs that will be routed by the server|
|routesExclude|String collection|Subsets of the routes that will not be routed by the server|
|splitDNS|String collection|The domains that will be resolved using the provided dns servers|
|listenPort|Int32|The port that both TCP and UPD will listen over on the server|
|advancedSettings|[keyValuePair](../resources/intune-shared-keyvaluepair.md) collection|Additional settings that may be applied to the server|
|lastUpdateDateTime|DateTimeOffset|When the MicrosoftTunnelConfiguration was last updated|
|roleScopeTagIds|String collection|List of Scope Tags for this Entity instance.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.microsoftTunnelConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.microsoftTunnelConfiguration",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "network": "String",
  "dnsServers": [
    "String"
  ],
  "defaultDomainSuffix": "String",
  "routesInclude": [
    "String"
  ],
  "routesExclude": [
    "String"
  ],
  "splitDNS": [
    "String"
  ],
  "listenPort": 1024,
  "advancedSettings": [
    {
      "@odata.type": "microsoft.graph.keyValuePair",
      "name": "String",
      "value": "String"
    }
  ],
  "lastUpdateDateTime": "String (timestamp)",
  "roleScopeTagIds": [
    "String"
  ]
}
```




