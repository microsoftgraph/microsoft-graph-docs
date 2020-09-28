---
title: "Call records overview"
description: "Call records give you insights into the calls and meetings that occur within your organization."
author: "stephenjust"
localization_priority: Normal
ms.prod: "cloud-communications"
---

# Call records overview

Call records provide usage and diagnostic information about the calls and online meetings that occur within your organization when using Microsoft Teams or Skype for Business. Usage and diagnostic data can be consumed to produce custom reporting for your business to help monitor adoption or to troubleshoot call quality issues.

Organizations can subscribe to changes to call records using the Microsoft Graph [webhook subscriptions](/graph/api/resources/webhooks?view=graph-rest-1.0) capability, allowing them to build near-real-time reports from the data or to alert on certain scenarios like emergency calls.

> **Important:** Use discretion when granting the CallRecords.Read.All permission to applications. Call records can provide insights into the operation of your business, and therefore can be a target for malicious actors. Only grant this permission to applications you trust to meet your data protection requirements.

## Subscribe to call records

Organizations and partners often have their own tooling for generating reports about calls and online meetings. Using webhooks, they can receive a continuous feed of call records as they are created. This push-model enables organizations and partners to build their own real-time reporting solutions.

## Look up a call record by its call ID

Applications can retrieve a [call record](/graph/api/resources/callrecords-callrecord?view=graph-rest-1.0) by its ID. This ID can be determined from a webhook notification or retrieved from administrative tools.

## Get call record reports

Organizations that use Microsoft Teams to connect to the public switched telephone network (PSTN) usually want to track this usage to understand the associated costs. The [getPstnCalls](/graph/api/callrecords-callrecord-getpstncalls?view=graph-rest-beta) and [getDirectRoutingCalls](/graph/api/callrecords-callrecord-getdirectroutingcalls?view=graph-rest-beta) functions return a projection of [call record](/graph/api/resources/callrecords-callrecord?view=graph-rest-beta) data in a tabular format.

## See also

- [Call records permissions](./permissions-reference.md#call-records-permissions)