---
author: k-tsoi
description: "This resource represents the settings on a site."
ms.date: 06/08/2020
title: SiteSettings
localization_priority: Normal
ms.prod: "sharepoint"
doc_type: resourcePageType
---

# siteSettings resource

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This resource represents the setting of the [site].

## JSON representation

Here is a JSON representation of a **siteSettings** resource.

<!--{
  "blockType": "resource",
  "@odata.type": "microsoft.graph.siteSettings",
  "openType": true
}-->

```json
{
  "languageTag": "en-US",
  "timeZone": "(UTC-08:00) Pacific Time (US and Canada)"
}
```

## Properties

The **siteSettings** resource has the following properties.

| Property name    | Type          | Description
|:-----------------|:--------------|:---------------------------
| languageTag      | string        | The language tag of language used on this site.
| timeZone         | string        | Indicates the time zone of the site using UTC Offset format.


## Relationships

The **siteSettings** resource does not have relationships to other resources.

[site]: site.md

<!--
{
  "type": "#page.annotation",
  "section": "documentation",
  "tocPath": "Resources/SiteSettings",
}
-->