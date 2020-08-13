---
title: "agreementAcceptance resource type"
description: "Represents the current status of a user within scope of a company's customizable terms of use powered by Azure Active Directory (Azure AD)."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "microsoft-identity-platform"
author: raprakasMSFT
---

# agreementAcceptance resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the current status of a user within scope of a company's customizable terms of use powered by Azure Active Directory (Azure AD).

<!--
## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get agreementAcceptance](../api/agreementacceptance-get.md) | [agreementAcceptance](agreementacceptance.md) | Read properties and relationships of agreementAcceptance object. |
| [Update](../api/agreementacceptance-update.md) | [agreementAcceptance](agreementacceptance.md) | Update an **agreementAcceptance** object. |
| [Delete](../api/agreementacceptance-delete.md) | None | Delete an **agreementAcceptance** object. |
-->

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|agreementFileId|String|ID of the agreement file accepted by the user.|
|agreementId|String|ID of the agreement.|
|deviceDisplayName|String|The display name of the device used for accepting the agreement.|
|deviceId|String|The unique identifier of the device used for accepting the agreement.|
|deviceOSType|String|The operating system used for accepting the agreement.|
|deviceOSVersion|String|The operating system version of the device used for accepting the agreement.	|
|expirationDateTime|DateTimeOffset|The expiration date time of the acceptance. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|id|String| Read-only.|
|recordedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|state|string| Possible values are: `accepted`, `declined`.|
|userDisplayName|String|Display name of the user when the acceptance was recorded.|
|userEmail|String|Email of the user when the acceptance was recorded.|
|userId|String|ID of the user who accepted the agreement.|
|userPrincipalName|String|UPN of the user when the acceptance was recorded.|

## Relationships
None.


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.agreementAcceptance"
}-->

```json
{
      "id": "String (identifier)",
      "agreementId": "String",
      "userId": "String",
      "deviceId": "String",
      "deviceDisplayName": "String",
      "deviceOSType": "String",
      "deviceOSVersion": "String",
      "agreementFileId": "String",
      "userDisplayName": "String",
      "userPrincipalName": "String",
      "userEmail": "String",
      "recordedDateTime": "String (timestamp)",
      "expirationDateTime": "String",
      "state": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "agreementAcceptance resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
