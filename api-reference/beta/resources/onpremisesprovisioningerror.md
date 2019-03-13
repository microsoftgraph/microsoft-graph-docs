---
title: "onPremisesProvisioningError resource type"
description: "Represents directory synchronization errors for the user, group, or organizational contact entities when synchronizing on-premises directories to Azure Active Directory."
localization_priority: Normal
doc_type: resourcePageType
---

# onPremisesProvisioningError resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents directory synchronization errors for the [user](user.md), [group](group.md), or [organizational contact](orgcontact.md) entities when synchronizing on-premises directories to Azure Active Directory.

## Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
|category|String| Category of the provisioning error. Note: Currently, there is only one possible value. Possible value: *PropertyConflict* - indicates a property value is not unique. Other objects contain the same value for the property. |
|occurredDateTime|DateTimeOffset| The date and time at which the error occurred. |
|propertyCausingError|String| Name of the directory property causing the error. Current possible values: *UserPrincipalName* or *ProxyAddress* |
|value|String| Value of the property causing the error. |

## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.onPremisesProvisioningError"
}-->

```json
{
  "category": "String",
  "occurredDateTime": "String (timestamp)",
  "propertyCausingError": "String",
  "value": "String"
}

```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "onPremisesProvisioningError resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/onpremisesprovisioningerror.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
