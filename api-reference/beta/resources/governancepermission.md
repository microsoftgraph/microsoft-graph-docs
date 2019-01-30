---
title: "governancePermission resource type"
description: "Represents the access permission that a governanceSubject has to a specific governanceResource.  "
localization_priority: Normal
---

# governancePermission resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the access permission that a [governanceSubject](../resources/governancesubject.md) has to a specific [governanceResource](../resources/governanceresource.md).  


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|accessLevel|String|The access level. Valid values: ``None``, ``UserRead``, ``AdminRead``, and ``AdminReadWrite``.|
|isActive|Boolean|Indicate if the the requestor has any active role assignment for the access level.|
|isEligible|Boolean|Indicate if the requestor has any eligible role assignment for the access level.|

## JSON representation

Here is a JSON representation of the resource.

```json
{
  "accessLevel": "String",
  "isActive": true,
  "isEligible": true
}

```
<!--
{
  "type": "#page.annotation",
  "suppressions": [
    "Error: /api-reference/beta/resources/governancepermission.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
