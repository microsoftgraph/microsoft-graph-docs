# sharingInvitation resource type

Represents information about a sharing invitation for a set of permissions. This object is read-only.


### Properties

| Property Name  | Type                          | Description                                                                                                                   |
|:---------------|:------------------------------|:------------------------------------------------------------------------------------------------------------------------------|
| email          | String                        | The email address provided for the recipient of the sharing invitation. Read-only.                                          |
| invitedBy      | [identitySet](identityset.md) | Provides information about who sent the invitation that created this permission, if that information is available. Read-only. |
| signInRequired | Boolean                       | If `true` the recipient of the invitation needs to sign in in order to access the shared item. Read-only.                     |

### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.sharingInvitation"
}-->

```json
{
  "email": "string",
  "redeemedBy": "string",
  "signInRequired": true
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "sharingInvitation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
