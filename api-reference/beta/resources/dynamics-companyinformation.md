---
title: companyInformation resource type 
description: Company information in Dynamics 365 Business Central.
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
localization_priority: Normal
ms.prod: "dynamics-365-business-central"
doc_type: resourcePageType
---
 
# companyInformation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the information specified for the current company in Dynamics 365 Business Central, such as name, address, email address, and website address.

## Methods

| Method         | Return Type  |Description|
|:---------------|:-------------|:----------|
|[Get companyInformation](../api/dynamics-companyinformation-get.md)|companyInformation|Gets a company information.|
|[Patch companyInformation](../api/dynamics-companyinformation-update.md)|companyInformation|Updates a company information.|


## Properties
| Property	   | Type	   |Description                           |
|:-------------|:--------|:-------------------------------------|
|id            |GUID|The unique ID of the company. Non-editable.|
|displayName   |string   |The company's display name.           |
|address       |[NAV.PostalAddress](../resources/dynamics-complextypes.md)|The company's address. View the complex type for additional detail.|
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

Here is a JSON representation of the companyInformation
```json
{
  "id": "GUID",
  "displayName": "string",
  "address": "NAV.PostalAddress",
  "phoneNumber": "string",
  "faxNumber": "string",
  "email": "string",
  "website": "string",
  "taxRegistrationNumber": "string",
  "currencyCode": "string",
  "currentFiscalYearStartDate": "date",
  "industry": "string",
  "picture": "stream",
  "businessProfileId": "string",
  "lastModifiedDateTime": "datetime"
}

```



