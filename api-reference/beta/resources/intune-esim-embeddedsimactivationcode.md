---
title: "embeddedSIMActivationCode resource type"
description: "The embedded SIM activation code as provided by the mobile operator."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# embeddedSIMActivationCode resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The embedded SIM activation code as provided by the mobile operator.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|integratedCircuitCardIdentifier|String|The Integrated Circuit Card Identifier (ICCID) for this embedded SIM activation code as provided by the mobile operator.
The input must match the following regular expression: '^\[0-9\]{19}\[0-9\]?$'.|
|matchingIdentifier|String|The MatchingIdentifier (MatchingID) as specified in the GSMA Association SGP.22 RSP Technical Specification section 4.1.
The input must match the following regular expression: '^\[a-zA-Z0-9\-\]*$'.|
|smdpPlusServerAddress|String|The fully qualified domain name of the SM-DP+ server as specified in the GSM Association SPG .22 RSP Technical Specification.
The input must match the following regular expression: '^(\[a-zA-Z0-9\]+(-\[a-zA-Z0-9\]+)*\.)+\[a-zA-Z\]{2,}$'.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.embeddedSIMActivationCode"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.embeddedSIMActivationCode",
  "integratedCircuitCardIdentifier": "String",
  "matchingIdentifier": "String",
  "smdpPlusServerAddress": "String"
}
```




