---
title: "macOSContentCachingType enum type"
description: "Indicates the type of content allowed to be cached by Apple's content caching service."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# macOSContentCachingType enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the type of content allowed to be cached by Apple's content caching service.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Default. Both user iCloud data and non-iCloud data will be cached.|
|userContentOnly|1|Allow Apple's content caching service to cache user iCloud data.|
|sharedContentOnly|2|Allow Apple's content caching service to cache non-iCloud data (e.g. app and software updates).|




