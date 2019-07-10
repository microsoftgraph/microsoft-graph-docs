---
title: "employee resource type"
description: "Represents an employee object in Dynamics 365 Business Central."
localization_priority: Normal
author: "SusanneWindfeldPedersen,henrikwh"
ms.prod: "dynamics-365-business-central"
doc_type: "resourcePageType"
---

# employee resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an employee object in Dynamics 365 Business Central.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get employee](../api/dynamics-employee-get.md) | [employee](dynamics-employee.md) | Read properties and relationships of employee object. |
| [Create picture](../api/dynamics-employee-post-picture.md) | [picture](dynamics-picture.md) | Create a new picture by posting to the picture collection. |
| [List picture](../api/dynamics-employee-list-picture.md) | [picture](dynamics-picture.md) collection | Get a picture object collection. |
| [Update](../api/dynamics-employee-update.md) | [employee](dynamics-employee.md) | Update employee object. |
| [Delete](../api/dynamics-employee-delete.md) | None | Delete employee object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id                  |string    |The employee ID. Non-editable.                         |
|number              |string  |The employee number. Read-Only.                        |
|displayName         |string  |The employee givenName + surname. Read-Only.           |
|givenName           |string  |The given name of the employee.                        |
|middleName          |string  |The middle name of the employee.                       |
|surname             |string  |The surname of the employee                            |
|jobTitle            |string  |The full name of the employee                          |
|address             |[microsoft.graph.postalAddress](../resources/dynamics-complextypes.md)|Specifies the employee's address. This address will appear on all resource documents for the employee.|
|phoneNumber         |string  |Specifies the employee's telephone number.             |
|mobilePhone         |string  |Specifies the employee's mobile telephone number.      |
|email               |string  |Specifies the employee's email address.                |
|personalEmail       |string  |Specifies the employee's personal email address.       |
|employmentDate      |date    |Specifies the date when the employee began to work for the company.|
|terminationDate     |date    |Specifies the date when the employee was terminated, due to retirement or dismissal, for example.|
|status              |string  |Specifies the employee's status. Possible values are Active, Inactive or Terminated|
|birthDate           |date    |Specifies the employee's date of birth.                |
|picture             |stream  |The employee picture. Read-Only.                       |
|lastModifiedDateTime|datetime|The last datetime the employee was modified. Read-Only.|  



## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|picture|[picture](dynamics-picture.md) collection| Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.employee",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "address": {"@odata.type": "microsoft.graph.postalAddressType"},
  "birthDate": "String (timestamp)",
  "displayName": "String",
  "email": "String",
  "employmentDate": "String (timestamp)",
  "givenName": "String",
  "id": "String (identifier)",
  "jobTitle": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "middleName": "String",
  "mobilePhone": "String",
  "number": "String",
  "personalEmail": "String",
  "phoneNumber": "String",
  "statisticsGroupCode": "String",
  "status": "String",
  "surname": "String",
  "terminationDate": "String (timestamp)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "employee resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->