---
title: "Integrate Microsoft Graph Security API alerts with a SIEM"
description: "The Microsoft Graph Security API enables managing security alerts from all Microsoft security products, known as Microsoft Graph Security providers, through a single REST endpoint. Some organizations may already ingest Azure-specific log data through Azure Monitor into SIEM solutions. To simplify integration, the security alerts available through the Microsoft Graph Security API can also be provisioned by the customer to their subscription via Azure Monitor. If your organization has already configured Azure Monitor integration with your SIEM solution, you can now easily stream your organization’s security alerts in addition to your existing data available through Azure Monitor."
author: "preetikr"
localization_priority: Priority
ms.prod: "security"
---

# Integrate Microsoft Graph Security API alerts with a SIEM

The Microsoft Graph Security API enables managing security alerts from all Microsoft security products, known as Microsoft Graph Security providers, through a single REST endpoint. Some organizations may already ingest Azure-specific log data through Azure Monitor into SIEM solutions. To simplify integration, the security alerts available through the Microsoft Graph Security API can also be provisioned by the customer to their subscription via Azure Monitor. If your organization has already configured Azure Monitor integration with your SIEM solution, you can now easily stream your organization’s security alerts in addition to your existing data available through Azure Monitor.

Azure Monitor supports connectors to several SIEM products. For a list of supported SIEM products, see [send monitoring data to an event hub](https://docs.microsoft.com/en-us/azure/monitoring-and-diagnostics/monitor-stream-monitoring-data-event-hubs#what-can-i-do-with-the-monitoring-data-being-sent-to-my-event-hub). Microsoft Graph Security API integration is currently available for [Splunk](https://splunkbase.splunk.com/) and [QRadar](https://www.ibm.com/us-en/marketplace/ibm-qradar-siem).

For information about Microsoft Graph Security API integration for specific SIEM solutions, see:

- [Splunk](security-splunk-siemintegration.md)
- [QRadar](security-qradar-siemintegration.md)
