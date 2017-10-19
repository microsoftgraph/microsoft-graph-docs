# onPremisesProvisioningError resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents directory synchronization errors for users, groups, or contacts when synchronizing on-premises directories to Azure Active Directory when using Microsoft synchronization product (including Azure AD Connect, DirSync and MIM + Connector).

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
<!-- {
  "type": "#page.annotation",
  "description": "onPremisesProvisioningError resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->