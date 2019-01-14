---
title: "educationSynchronizationDataProvider resource type"
description: "Represents the source SIS schema. This allows the system to know how to map the incoming data to the Azure Active Directory (Azure AD) schema. "
author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
---

# educationSynchronizationDataProvider resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

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
