---
title: "dateTimeTimeZone resource type"
description: "Describes the date, time, and time zone of a point in time."
localization_priority: Priority
doc_type: resourcePageType
author: "harini84"
ms.prod: "outlook"
---

# dateTimeTimeZone resource type

Namespace: microsoft.graph

Describes the date, time, and time zone of a point in time.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|dateTime|String|A single point of time in a combined date and time representation (`{date}T{time}`; for example, `2017-08-29T04:00:00.0000000`).|
|timeZone|String|Represents a time zone, for example, "Pacific Standard Time". See below for more possible values.|

In general, the **timeZone** property _can_ be set to any of the [time zones currently supported by Windows](/windows-hardware/manufacture/desktop/default-time-zones), as well as the additional [time zones supported by the calendar API](#additional-time-zones).

When using **dateTimeTimeZone** in conjunction with a method (such as [creating](../api/user-post-events.md) or [updating](../api/event-update.md) an event), take note of the actual time zones supported, which can be a smaller subset.

### Additional time zones

Etc/GMT+12

Etc/GMT+11

Pacific/Honolulu

America/Anchorage

America/Santa_Isabel

America/Los_Angeles

America/Phoenix

America/Chihuahua

America/Denver

America/Guatemala

America/Chicago

America/Mexico_City

America/Regina

America/Bogota

America/New_York

America/Indiana/Indianapolis

America/Caracas

America/Asuncion

America/Halifax

America/Cuiaba

America/La_Paz

America/Santiago

America/St_Johns

America/Sao_Paulo

America/Argentina/Buenos_Aires

America/Cayenne

America/Godthab

America/Montevideo

America/Bahia

Etc/GMT+2

Atlantic/Azores

Atlantic/Cape_Verde

Africa/Casablanca

Etc/GMT

Europe/London

Atlantic/Reykjavik

Europe/Berlin

Europe/Budapest

Europe/Paris

Europe/Warsaw

Africa/Lagos

Africa/Windhoek

Europe/Bucharest

Asia/Beirut

Africa/Cairo

Asia/Damascus

Africa/Johannesburg

Europe/Kyiv (Kiev)

Europe/Istanbul

Asia/Jerusalem

Asia/Amman

Asia/Baghdad

Europe/Kaliningrad

Asia/Riyadh

Africa/Nairobi

Asia/Tehran

Asia/Dubai

Asia/Baku

Europe/Moscow

Indian/Mauritius

Asia/Tbilisi

Asia/Yerevan

Asia/Kabul

Asia/Karachi

Asia/Toshkent (Tashkent)

Asia/Kolkata

Asia/Colombo

Asia/Kathmandu

Asia/Astana (Almaty)

Asia/Dhaka

Asia/Yekaterinburg

Asia/Yangon (Rangoon)

Asia/Bangkok

Asia/Novosibirsk

Asia/Shanghai

Asia/Krasnoyarsk

Asia/Singapore

Australia/Perth

Asia/Taipei

Asia/Ulaanbaatar

Asia/Irkutsk

Asia/Tokyo

Asia/Seoul

Australia/Adelaide

Australia/Darwin

Australia/Brisbane

Australia/Sydney

Pacific/Port_Moresby

Australia/Hobart

Asia/Yakutsk

Pacific/Guadalcanal

Asia/Vladivostok

Pacific/Auckland

Etc/GMT-12

Pacific/Fiji

Asia/Magadan

Pacific/Tongatapu

Pacific/Apia

Pacific/Kiritimati

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.dateTimeTimeZone"
}-->

```json
{
  "dateTime": "string",
  "timeZone": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "dateTimeTimeZone resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

