---
title: "educationIdentityCreationConfiguration resource type"
description: "Defines the settings on creation of school data profile identities. These identities include students and teachers. Based on these settings, the users will be created in the directory."
localization_priority: Normal
author: "mmast-msft"
ms.prod: "education"
doc_type: resourcePageType
---

# educationIdentityCreationConfiguration resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the settings on creation of school data profile identities. These identities include students and teachers. Based on these settings, the users will be created in the directory.

> [!WARNING]
> If you have directory sync turned on to sync between on-premises Active Directory and Azure Active Directory (Azure AD), use the [educationIdentityMatchingConfiguration](educationidentitymatchingconfiguration.md) resource instead.

Derived from [educationIdentitySynchronizationConfiguration](educationidentitysynchronizationconfiguration.md).

## Properties

| Property    | Type                                                             | Description                                    |
| :---------- | :--------------------------------------------------------------- | :--------------------------------------------- |
| userDomains | [educationIdentityDomain](educationidentitydomain.md) collection | Sets the list of domains to use per user type. |

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "#microsoft.graph.educationIdentityCreationConfiguration"
}-->

```json
{
  "@odata.type": "microsoft.graph.educationIdentityCreationConfiguration",
  "userDomains": [
    {
      "@odata.type": "microsoft.graph.educationIdentityDomain"
    }
  ]
}
```


