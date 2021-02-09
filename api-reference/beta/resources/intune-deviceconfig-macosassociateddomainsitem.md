---
title: "macOSAssociatedDomainsItem resource type"
description: "A mapping of application identifiers to associated domains."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# macOSAssociatedDomainsItem resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A mapping of application identifiers to associated domains.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|applicationIdentifier|String|The application identifier of the app to associate domains with.|
|domains|String collection|The list of domains to associate.|
|directDownloadsEnabled|Boolean|Determines whether data should be downloaded directly or via a CDN.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.macOSAssociatedDomainsItem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.macOSAssociatedDomainsItem",
  "applicationIdentifier": "String",
  "domains": [
    "String"
  ],
  "directDownloadsEnabled": true
}
```




