---
title: "macOSContentCachingPeerPolicy enum type"
description: "Determines which content caches other content caches will peer with."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# macOSContentCachingPeerPolicy enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Determines which content caches other content caches will peer with.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Defaults to peers in local network.|
|peersInLocalNetwork|1|Content caches will only peer with caches in their immediate local network.|
|peersWithSamePublicIpAddress|2|Content caches will only peer with caches that share the same public IP address.|
|peersInCustomLocalNetworks|3|Content caches will use contentCachingPeerFilterRanges and contentCachingPeerListenRanges to determine which caches to peer with.|




