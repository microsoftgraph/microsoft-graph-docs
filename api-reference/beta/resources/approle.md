# appRole resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents an application role that may be requested by a client application calling another application or that may be used to assign an application to users or groups in a specified application role. The **appRoles** property of the [servicePrincipal](serviceprincipal.md) entity and of the [application](application.md) entity is a collection of **appRole**.

> Important: This functionality is disabled in the current release.

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.approle"
}-->

```json
{
  "allowedMemberTypes": ["string"],
  "description": "string",
  "displayName": "string",
  "id": "guid",
  "isEnabled": true,
  "origin": "string",
  "value": "string"
}

```
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|allowedMemberTypes|String collection|Specifies whether this app role definition can be assigned to users and groups by setting to “User”, or to other applications (that are accessing this application in daemon service scenarios) by setting to “Application”, or to both.|
|description|String|Permission help text that appears in the admin app assignment and consent experiences.|
|displayName|String|Display name for the permission that appears in the admin consent and app assignment experiences.|
|id|Guid|Unique role identifier inside the **appRoles** collection.|
|isEnabled|Boolean|When creating or updating a role definition, this must be set to **true** (which is the default). To delete a role, this must first be set to **false**.  At that point, in a subsequent call, this role may be removed.|
|value|String|Specifies the value of the roles claim that the application should expect in the authentication and access tokens.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "appRole resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->