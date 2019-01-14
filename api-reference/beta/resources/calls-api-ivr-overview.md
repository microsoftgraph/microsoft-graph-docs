---
title: "IVR scenarios in calls"
description: "The following are the Interactive Voice Response (IVR) scenarios that the calling APIs in Microsoft Graph support:"
author: "VinodRavichandran"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# IVR scenarios in calls

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The following are the Interactive Voice Response (IVR) scenarios that the calling APIs in Microsoft Graph support:

- Playing an audio prompt - for example, when a call is placed in a customer service agent's queue.
- Record - for example, to record the caller's audio, usually after they heard a prompt with options.
- Subscribe to tone - for example, when you want to know what DTMF tones the caller selected, usually after hearing the audio prompt.
- Cancel Media Processing - for example, when you want to cancel any PlayPrompt or Record operations that might be in process.
