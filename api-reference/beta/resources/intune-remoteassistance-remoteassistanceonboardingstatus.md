---
title: "remoteAssistanceOnboardingStatus enum type"
description: "The current TeamViewer connector status"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# remoteAssistanceOnboardingStatus enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The current TeamViewer connector status

## Members
|Member|Value|Description|
|:---|:---|:---|
|notOnboarded|0|The status reported when there is no active TeamViewer connector configured or active|
|onboarding|1|The status reported when the system has initiated a TeamViewer connection, but the service has not yet completed the confirmation of a connector|
|onboarded|2|The status reported when the system has successfully exchanged account information with TeamViewer and can now initiate remote assistance sessions with clients|




