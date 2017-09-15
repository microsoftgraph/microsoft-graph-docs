---
author: rgregg
ms.author: rgregg
ms.date: 09/10/2017
---
# Timestamp type

The **Timestamp** type represents date and time information, by using [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601) format and is always in UTC time.

For example, if a file was modified at midnight UTC on Jan 1, 2014, the metadata would look like this.

<!-- {"blockType": "ignored"} -->

```json
{
  "lastModifiedDateTime": "2014-01-01T00:00:00Z"
}
```

<!-- {
  "type": "#page.annotation",
  "description": "Timestamps in OneDrive as in ISO 8601 format.",
  "keywords": "timestamp,iso8601",
  "section": "documentation"
} -->
