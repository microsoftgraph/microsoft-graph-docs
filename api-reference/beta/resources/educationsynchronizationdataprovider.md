---
title: "educationSynchronizationDataProvider resource type"
description: "Represents the source SIS schema. This allows the system to know how to map the incoming data to the Azure Active Directory (Azure AD) schema. "
author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
doc_type: resourcePageType
---

# educationSynchronizationDataProvider resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the source SIS schema. This allows the system to know how to map the incoming data to the Azure Active Directory (Azure AD) schema.

> **Note:** This complex type is abstract. Refer to the specific types of data providers listed.

## Derived types
| Type | Description |
|:-|:-|:-|
| [educationcsvdataprovider](educationcsvdataprovider.md) | Used with CSV files as the input source. |
| [educationpowerschooldataprovider](educationpowerschooldataprovider.md) | Used with PowerSchool as the input source. |
| [educationonerosterapidataprovider](educationonerosterapidataprovider.md) | Used with OneRoster API as the input source. |

## Properties

No properties are exposed by this type.
