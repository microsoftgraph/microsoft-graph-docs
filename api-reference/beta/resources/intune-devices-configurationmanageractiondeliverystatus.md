---
title: "configurationManagerActionDeliveryStatus enum type"
description: "Delivery state of Configuration Manager device action"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# configurationManagerActionDeliveryStatus enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Delivery state of Configuration Manager device action

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Pending to deliver the action to ConfigurationManager|
|pendingDelivery|1|Pending to deliver the action to ConfigurationManager|
|deliveredToConnectorService|2|Action is sent to ConfigurationManager Connector service (cloud)|
|failedToDeliverToConnectorService|3|Failed to send the action to ConfigurationManager Connector service (cloud)|
|deliveredToOnPremisesServer|4|Action is delivered to ConfigurationManager on-prem server|




