---
title: "Telecom expense management in Microsoft Intune - Microsoft Graph API"
description: "Lists the Microsoft Graph API for Intune endpoints (REST) related to telecom expense management for a tenant organization."
localization_priority: Normal
author: "dougeby"
ms.prod: "intune"
---

# Telecom expense management in Microsoft Intune

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

You can limit data usage and roaming on corporate-owned devices when you use the Saaswedo telecom expense management service, which integrates with Intune. The service enables you to set and enforce usage limits and to send users an alert when they exceed a configured threshold. You can also configure the service to take different actions, such as disabling roaming, when users exceed the threshold. Reports that provide data usage and monitoring information are available in the Saaswedo console. Before you can use the Saaswedo telecom expense management service with Intune, you need to configure settings in a Saaswedo console and in Intune. The connection must be turned on for the Saaswedo service and for Intune. If the Saaswedo side of the connection is enabled, but not the Intune side, Intune receives the communication, but ignores it.

The following Graph resources are available to manage telecom expenses in Intune:

- [Telecom expense management partner](intune-tem-telecomexpensemanagementpartner.md)



