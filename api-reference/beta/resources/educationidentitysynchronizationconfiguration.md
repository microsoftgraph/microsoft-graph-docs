---
title: "educationIdentitySynchronizationConfiguration resource type"
description: "Abstract base class for all school data profile identity synchronization configurations. The derived classes define the behavior for synchronizing identities. The following are the derived types."
author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
doc_type: resourcePageType
---


# educationIdentitySynchronizationConfiguration resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Abstract base class for all school data profile identity synchronization configurations. The derived classes define the behavior for synchronizing identities. The following are the derived types.

## Derived types
| Type | Description |
|:-|:-|
| [**educationIdentityMatchingConfiguration**](educationidentitymatchingconfiguration.md) | Use this type to match existing user accounts in Azure Active Directory (Azure AD). |
| [**educationIdentityCreationConfiguration**](educationidentitycreationconfiguration.md) | Use this type to create new user accounts in Azure AD. |
<!--
{
  "type": "#page.annotation",
  "suppressions": [
    "Error: /api-reference/beta/resources/educationidentitysynchronizationconfiguration.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
