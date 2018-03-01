# office365ActivationsUserDetail resource type

## Properties

| Property             | Type                                     | Description                              |
| :------------------- | :--------------------------------------- | ---------------------------------------- |
| reportRefreshDate    | Date                                     | The latest date of the content.          |
| userPrincipalName    | String                                   | The user principal name (UPN) of the user. The UPN is an Internet-style login name for the user based on the Internet standard RFC 822. By convention, this should map to the user's email name. The general format is alias@domain, where domain must be present in the tenant’s collection of verified domains. This property is required when a user is created. |
| displayName          | String                                   | The name displayed in the address book for the user. This is usually the combination of the user's first name, middle initial, and last name. This property is required when a user is created and it cannot be cleared during updates. |
| userActivationCounts | [userActivationCounts](../resources/useractivationcounts.md) collection | The user's latest product activation counts on all the platforms for all the assigned product types. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.office365ActivationsUserDetail"
} -->

```json
{
  "reportRefreshDate": "Date", 
  "userPrincipalName": "String", 
  "displayName": "String", 
  "userActivationCounts": [{"@odata.type":"microsoft.graph.userActivationCounts"}]
}
```
