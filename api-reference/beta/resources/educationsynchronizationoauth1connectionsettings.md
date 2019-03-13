---
title: "educationSynchronizationOAuth1ConnectionSettings resource"
description: "When OAuth1 is to be used to connect to the data provider, this connection settings type should be used to set up the profile."
localization_priority: Normal
author: "mmast-msft"
ms.prod: "education"
doc_type: resourcePageType
---

# educationSynchronizationOAuth1ConnectionSettings resource

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

When OAuth1 is to be used to connect to the data provider, this connection settings type should be used to set up the profile.

Derived from [microsoft.graph.educationSynchronizationConnectionSettings](educationsynchronizationconnectionsettings.md).

## Properties

No additional properties are exposed by this type.

## JSON representation
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.educationSynchronizationOAuth1ConnectionSettings"
}-->

```json
{
    "@odata.type": "microsoft.graph.educationSynchronizationOAuth1ConnectionSettings",
    "clientId": "String",
    "clientSecret": "String"
}
```
<!--
{
  "type": "#page.annotation",
  "suppressions": [
    "Error: /api-reference/beta/resources/educationsynchronizationoauth1connectionsettings.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
