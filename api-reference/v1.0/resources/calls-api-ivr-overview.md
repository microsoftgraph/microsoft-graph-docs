---
title: "IVR scenarios in calls"
description: "The following are the Interactive Voice Response (IVR) scenarios that the calling APIs in Microsoft Graph support:"
author: "ananmishr"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: conceptualPageType
---

# IVR scenarios in calls

Namespace: microsoft.graph

The following are the Interactive Voice Response (IVR) scenarios that the calling APIs in Microsoft Graph support:

- Playing an audio prompt - for example, when a call is placed in a customer service agent's queue.
- Recording a response -for example, to record the caller's audio, usually after they heard a prompt with options.
- Subscribing to tones - for example, when you want to know what DTMF tones the caller selected, usually after hearing the audio prompt.
- Cancel media processing - for example, when you want to cancel any playPrompt or recordResponse operations that might be in process.
