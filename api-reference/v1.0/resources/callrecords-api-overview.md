---
title: "Working with the call records API in Microsoft Graph"
description: "The Microsoft Graph call records API allows you to retrieve usage and diagnostics data for calls and online meetings within your organization."
author: "williamlooney"
doc_type: conceptualPageType
ms.prod: cloud-communications
localization_priority: Priority
---

# Working with the call records API in Microsoft Graph

Call records provide usage and diagnostic information about the calls and online meetings that occur within your organization when using Microsoft Teams or Skype for Business. You can use the call records APIs to subscribe to call records and look up call records by IDs.

The call records API is defined in the OData sub-namespace, `microsoft.graph.callRecords`.

## Key resource types

| Resource | Methods |
| :-- | :-- |
| [callRecord](callrecords-callrecord.md) | [Get callRecord](../api/callrecords-callrecord-get.md) |
| [session](callrecords-session.md) | [Get callRecord](../api/callrecords-callrecord-get.md)<br />[List sessions](../api/callrecords-session-list.md) |
| [segment](callrecords-segment.md) | [Get callRecord](../api/callrecords-callrecord-get.md)<br />[List sessions](../api/callrecords-session-list.md) |

## Call record structure

The [callRecord](callrecords-callrecord.md) entity represents a single peer-to-peer call or a group call between multiple participants, sometimes referred to as an online meeting.

A peer-to-peer call contains a single [session](callrecords-session.md) between the two participants in the call. Group calls contain one or more **session** entities. In a group call, each **session** is between the participant and a service endpoint.

Each **session** contains one or more [segment](callrecords-segment.md) entities. A **segment** represents a media link between two [endpoints](callrecords-endpoint.md). For most calls, only one **segment** will be present for each **session**, however sometimes there may be one or more intermediate **endpoints**.

![Image of a the data structure representing a complete call record](/graph/images/callrecords-structure.png)

In the diagram above, the numbers denote how many children of each type can be present. For example, a 1..N relationship between a **callRecord** and a **session** means one **callRecord** instance can contain one or more **session** instances. Similarly, a 1..N relationship between a **segment** and a **media** means one **segment** instance can contain one or more [media](callrecords-media.md) streams.

## See also

- [Webhook subscriptions](/graph/api/resources/webhooks?view=graph-rest-1.0)

