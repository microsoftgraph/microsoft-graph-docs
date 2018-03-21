# Update groupLifecyclePolicy

Update the properties of a groupLifecyclePolicy[groupLifecyclePolicy resource type](../resources/grouplifecyclepolicy.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).
 
|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Directory.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Directory.ReadWrite.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /groupLifecyclePolicies/{id}
```
## Optional request headers
| Name | Description |
|:-----------|:-----------|
| Authorization | Bearer {token}. Required. |
| Content-Type	| application/json	|

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body maintain their previous values or are recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property | Type | Description |
|:---------------|:--------|:----------|
|alternateNotificationEmails|String| List of email address to send notifications for groups without owners. Multiple email address can be defined by separating email address with a semicolon. |
|groupLifetimeInDays|Int32| Number of days before a group expires and needs to be renewed. Once renewed, the group expiration is extended by the number of days defined. |
|managedGroupTypes|String| The group type for which the expiration policy applies. Possible values are **All**, **Selected** or **None**. |

## Response

If successful, this method returns a `200 OK` response code and updated [groupLifecyclePolicy](../resources/grouplifecyclepolicy.md) object in the response body.
## Example

##### Request

<!-- {
  "blockType": "request",
  "name": "update_grouplifecyclepolicy"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/groupLifecyclePolicies/{id}
Content-type: application/json
Content-length: 125

{
  "groupLifetimeInDays": 180,
  "managedGroupTypes": "Selected",
  "alternateNotificationEmails": "admin@contoso.com"
}
```
##### Response
Note: The response object shown here may be truncated for brevity. 
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.groupLifecyclePolicy"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 146

{
  "id": "id-value",
  "groupLifetimeInDays": 180,
  "managedGroupTypes": "Selected",
  "alternateNotificationEmails": "admin@contoso.com"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update groupLifecyclePolicy",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->