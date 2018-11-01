---
apiDocType: resourcePageType
---
# riskyUsers resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents Azure AD users who are at risk. Azure AD continually evaluates user risk based on various signals and machine learning. This API provides programmatic access to all at-risk users in your Azure AD.

For more information about risk events, see [Azure Active Directory Identity Protection](https://azure.microsoft.com/en-us/documentation/articles/active-directory-identityprotection/).

## Methods

| Method   | Return Type|Description|
|:---------------|:--------|:----------|
|[List riskyUsers](../api/riskyusers_list.md) | [riskyUsers](riskyUser.md) |List risky users and their properties.|
|[Get riskyUsers](../api/riskyusers_get.md) | [riskyUsers](riskyUser.md)|Get a specific risky user and its properties.|

## Properties

| Property   | Type|Description|
|:---------------|:--------|:----------|
|`id`|`string`|Unique id of the user at risk|
|`isDeleted`|`bool`|Indicates whether the user is deleted. Possible values are: `true`, `false`|
|`isGuest`|`bool`|Indicates whether the user is a guest user. Possible values are: `true`, `false`. True if user’s identity lies outside of the tenant in consideration. This user could be a B2B or a B2C user with identity in Azure AD, MSA or 3rd party identity provider. False if user’s identity lies inside the tenant in consideration|
|`risk`|[risk](risk.md)|Risky user state|
|`riskLastUpdatedDateTime`|`datetime`|The date and time that the risky user was last updated|
|`userDisplayName`|`string`|Risky user display name|
|`userPrincipalName`|`string`|Risky user principal name|

## Relationships

| Relationship | Type |Description|
|:---------------|:--------|:----------|
|id|UserObjectId| The unique identifier of the user with which a given risk event is associated with.|
|isGuest|isGuest| A risky user could be either a Home user (B2E) or a Guest user (B2B, B2C).|
|isDeleted|isDeleted| A user may or may not be deleted. |
|riskState|[riskState](risk.md)| A risky user could exist in one of multiple states. |
|riskDetail|[riskDetail](risk.md)| A risky user could be in a certain state because of multiple reasons. |
|riskLevel|[riskLevel](risk.md)| A risky user could be considered one of multiple risk levels. |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.riskyusers"
}-->

```json
{
 "id": "string",
"riskLastUpdatedDateTime": "dateTimeOffset",
"isGuest": "boolean",
"isDeleted": "boolean",
"risk": {"@odata.type": "microsoft.graph.risk"},
"userDisplayName": "string",
"userPrincipalName": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "riskyusers resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
