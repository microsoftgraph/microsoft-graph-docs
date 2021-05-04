---
title: "educationIdentityMatchingConfiguration resource type"
description: "Defines the settings for matching school data profile identities. These identities include students and teachers. Based on these settings, the users will be updated in the directory."
localization_priority: Normal
author: "mmast-msft"
ms.prod: "education"
doc_type: resourcePageType
---

# educationIdentityMatchingConfiguration resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the settings for matching school data profile identities. These identities include students and teachers. Based on these settings, the users will be updated in the directory.

> [!NOTE]
> No Users are created when this resource is selected.

## Properties

| Property        | Type                                                                                               | Description                                                                                      |
| :-------------- | :------------------------------------------------------------------------------------------------- | :----------------------------------------------------------------------------------------------- |
| matchingOptions | [microsoft.graph.educationIdentityMatchingOptions](educationidentitymatchingoptions.md) collection | Mapping between the user account and the options to use to uniquely identify the user to update. |

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationIdentityMatchingConfiguration"
}-->

```json
{
  "@odata.type": "microsoft.graph.educationIdentityMatchingConfiguration",
  "matchingOptions": [
    {
      "appliesTo": { "@odata.type": "microsoft.graph.educationUserRole" },
      "sourcePropertyName": "String",
      "targetPropertyName": "String",
      "targetDomain": "String"
    }
  ]
}
```


