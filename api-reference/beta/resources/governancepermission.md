# governancePermission resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

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