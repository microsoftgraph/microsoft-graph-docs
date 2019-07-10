---
title: "companyInformation resource type"
description: "Represents an companyInformation object in Dynamics 365 Business Central."
localization_priority: Normal
author: SusanneWindfeldPedersen, henrikwh
ms.prod: "dynamics-365-business-central"
doc_type: "resourcePageType"
---

# companyInformation resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an companyInformation object in Dynamics 365 Business Central.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get companyInformation](../api/dynamics-companyinformation-get.md) | [companyInformation](dynamics-companyinformation.md) | Read properties and relationships of companyInformation object. |
| [Update](../api/dynamics-companyinformation-update.md) | [companyInformation](dynamics-companyinformation.md) | Update companyInformation object. |
| [Delete](../api/dynamics-companyinformation-delete.md) | None | Delete companyInformation object. |

## Properties

| Property	   | Type	   |Description                           |
|:-------------|:--------|:-------------------------------------|
|id            |string|The unique ID of the company. Non-editable.|
|displayName   |string   |The company's display name.           |
|address       |[microsoft.graph.postalAddress](../resources/dynamics-complextypes.md)|The company's address. View the complex type for additional detail.|
|phoneNumber   |string   |The company's telephone number.       |
|faxNumber     |string   |The company's fax number.             |
|email         |string   |The company's email address.          |
|website       |string   |The company's website address.        |
|taxRegistrationNumber|string|The company's tax registration number.|
|currencyCode  |string   |The currency the company does business in. Read-Only.|
|currentFiscalYearStartDate|date|The company's current fiscal year start date. Read-Only.|
|industry      |string   |The industry the company is part of.  |
|picture       |stream   |The company logo. Read-Only.          |
|businessProfileId|string|The business profile ID linked to the Financials company. Read-Only.|
|lastModifiedDateTime|datetime|The last datetime the company was modified. Read-Only.|  

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.companyInformation",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "address": {"@odata.type": "microsoft.graph.postalAddressType"},
  "currencyCode": "String",
  "currentFiscalYearStartDate": "String (timestamp)",
  "displayName": "String",
  "email": "String",
  "faxNumber": "String",
  "id": "String (identifier)",
  "industry": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "phoneNumber": "String",
  "picture": "Stream",
  "taxRegistrationNumber": "String",
  "website": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "companyInformation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->