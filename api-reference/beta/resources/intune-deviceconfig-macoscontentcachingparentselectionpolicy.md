---
title: "macOSContentCachingParentSelectionPolicy enum type"
description: "Determines how content caches select a parent cache."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# macOSContentCachingParentSelectionPolicy enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Determines how content caches select a parent cache.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Defaults to round-robin strategy.|
|roundRobin|1|Rotate through the parents in order. Use this policy for load balancing.|
|firstAvailable|2|Always use the first available parent in the Parents list. Use this policy to designate permanent primary, secondary, and subsequent parents.|
|urlPathHash|3|Hash the path part of the requested URL so that the same parent is always used for the same URL. This is useful for maximizing the size of the combined caches of the parents.|
|random|4|Choose a parent at random. Use this policy for load balancing.|
|stickyAvailable|5|Use the first available parent that is available in the Parents list until it becomes unavailable, then advance to the next one. Use this policy for designating floating primary, secondary, and subsequent parents.|




