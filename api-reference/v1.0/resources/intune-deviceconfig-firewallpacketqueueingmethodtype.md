---
title: "firewallPacketQueueingMethodType enum type"
description: "Possible values for firewallPacketQueueingMethod"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# firewallPacketQueueingMethodType enum type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values for firewallPacketQueueingMethod

## Members
|Member|Value|Description|
|:---|:---|:---|
|deviceDefault|0|No value configured by Intune, do not override the user-configured device default value|
|disabled|1|Disable packet queuing|
|queueInbound|2|Queue inbound encrypted packets|
|queueOutbound|3|Queue decrypted outbound packets for forwarding|
|queueBoth|4|Queue both inbound and outbound packets|




