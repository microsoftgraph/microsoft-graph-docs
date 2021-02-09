---
title: "defenderPotentiallyUnwantedAppAction enum type"
description: "Defender’s action to take on detected Potentially Unwanted Application (PUA)."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# defenderPotentiallyUnwantedAppAction enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Defender’s action to take on detected Potentially Unwanted Application (PUA).

## Members
|Member|Value|Description|
|:---|:---|:---|
|deviceDefault|0|PUA Protection is off. Defender will not protect against potentially unwanted applications.|
|block|1|PUA Protection is on. Detected items are blocked. They will show in history along with other threats.|
|audit|2|Audit mode. Defender will detect potentially unwanted applications, but take no actions. You can review information about applications Defender would have taken action against by searching for events created by Defender in the Event Viewer.|




