# sharingInvitation resource type

Represents information about a sharing invitation for a set of permissions. This object is read-only.


### Properties
| Property Name  | Type    | Description                                                                                   |
|:---------------|:--------|:----------------------------------------------------------------------------------------------|
| email          | String  | The email address the invitation was sent to                                                  |
| redeemedBy     | String  | Indicates the redemption status of the invitation. See possible values below.                 |
| signInRequired | Boolean | If `true` the recipient of the invitation needs to sign in in order to access the shared item |

### RedeemedBy Values
| Value | Description                                                                                               |
|:------|:----------------------------------------------------------------------------------------------------------|
| none  | The sharing invitation has not been redeemed or accepted.                                                 |
| same  | The sharing invitation was redeemed by an account matching the email address of the recipient.            |
| other | The sharing invitation was redeemed by an account that does not match the email address of the recipient. |

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
