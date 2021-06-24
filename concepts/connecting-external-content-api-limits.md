---
title: "Microsoft Graph connector API limits"
description: "Microsoft Graph connector API limits"
author: mecampos
localization_priority: Priority
doc_type: conceptualPageType
ms.prod: search
---

# Microsoft Graph connector API limits

This topic describes implementation and operational limits for Microsoft Graph connectors. Keep these limits in mind when designing connectors.

## Connection limits

| **Limit** | **Description** |
| --- | --- |
| **10 connections** | The maximum number of [connection](/graph/api/resources/externalconnection?view=graph-rest-beta&preserve-view=true) resources per Microsoft 365 tenant. |
| **700,000 items** | The maximum number of [items](/graph/api/resources/externalitem?view=graph-rest-beta&preserve-view=true) per connection. |
| **70 GB** | The maximum byte size of a connection. |

## Schema limits

| **Limit** | **Description** |
| --- | --- |
| **128 properties** | The maximum number of properties that can be defined in a [schema](/graph/api/resources/schema?view=graph-rest-beta&preserve-view=true), characterizing the data ingested through a connection. |

## Group limits

| **Limit** | **Description** |
| --- | --- |
| 100,000 | The maximum number of [external groups](/graph/api/resources/externalgroup?view=graph-rest-beta&preserve-view=true) per Microsoft 365 tenant. |
| **1000 requests/sec** | The maximum number of requests allowed per second in the group administration [throttling](#throttling) threshold. |

## Item ingestion

| **Limit** | **Description** |
| --- | --- |
| **4 items/sec (250 MB/hour)** | The throughput limit to ingest items through a connection. |
| **4 MB** | The maximum size of an item; this limit applies to the request body when [ingesting and indexing an item](/graph/api/externalconnection-put-items?view=graph-rest-beta&preserve-view=true). |
| **N/A** | The maximum size of a property. |

## Throttling

When a [throttling](throttling.md) threshold is exceeded, Microsoft Graph limits any further requests from that client for a period of time. When throttling occurs, Microsoft Graph returns HTTP status code 429 (Too many requests), and the requests fail. A suggested wait time is returned in the response header of the failed request. Throttling behavior can depend on the type and number of requests. For example, if you have a high volume of requests, all requests types are throttled. Threshold limits vary based on the request type. Therefore, you could encounter a scenario where writes are throttled but reads are still permitted.
