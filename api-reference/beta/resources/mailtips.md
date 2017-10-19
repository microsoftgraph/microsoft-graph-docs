# mailTips resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Informative messages about a recipient, that are displayed to users while they are composing a message. For example, an out-of-office message 
as an automatic reply for a message recipient.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| automaticReplies | [automaticRepliesMailTips](../resources/automaticrepliesmailtips.md) | Mail tips for automatic reply if it has been set up by the recipient. |
| customMailTip | String | A custom mail tip that can be set on the recipient's mailbox. |
| deliveryRestricted| Boolean | Whether the recipient's mailbox is restricted, for example, accepting messages from only a predefined list of senders, rejecting messages from a predefined list of senders, or accepting messages from only authenticated senders. |
| emailAddress | [emailAddress](../resources/emailaddress.md) | The email address of the recipient to get mailtips for. |
| error | [mailTipsError](../resources/mailtipserror.md) | Errors that occur during the [getMailTips](../api/user_getmailtips.md) action. |
| externalMemberCount | Int32 | The number of external members if the recipient is a distribution list. |
| isModerated |Boolean  | Whether sending messages to the recipient requires approval. For example, if the recipient is a large distribution list and a moderator has been set up to approve messages sent to that distribution list, or if sending messages to a recipient requires approval of the recipient's manager. |
| mailboxFull | Boolean | The mailbox full status of the recipient. |
| maxMessageSize | Int32 | The maximum message size that has been configured for the recipient's organization or mailbox. |
| recipientScope | String | The scope of the recipient. Possible values are: `none`, `internal`, `external`, `externalPartner`, `externalNonParther`. For example, an administrator can set another organization to be its "partner". The scope is useful if an administrator wants certain mailtips to be accessible to certain scopes. It's also useful to senders to inform them that their message may leave the organization, helping them make the correct decisions about wording, tone and content.|
| recipientSuggestions | [recipient](../resources/recipient.md) collection | Recipients suggested based on previous contexts where they appear in the same message. |
| totalMemberCount | Int32 | The number of members if the recipient is a distribution list. |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "automaticReplies",
    "customMailTip",
    "deliveryRestricted",
    "emailAddress",
    "error",
    "externalMemberCount",
    "isModerated",
    "mailboxFull",
    "maxMessageSize",
    "recipientScope",
    "recipientSuggestions",
    "totalMemberCount"
  ],
  "@odata.type": "microsoft.graph.mailTips"
}-->

```json
{
  "automaticReplies": {"@odata.type": "microsoft.graph.automaticRepliesMailTips"},
  "customMailTip": "string",
  "deliveryRestricted": "boolean",
  "emailAddress": {"@odata.type": "microsoft.graph.emailAddress"},
  "error": {"@odata.type": "microsoft.graph.mailTipsError"},
  "externalMemberCount": 1024,
  "isModerated": "boolean",
  "mailboxFull": "boolean",
  "maxMessageSize": 1024,
  "recipientScope": "string",
  "recipientSuggestions": [{"@odata.type": "microsoft.graph.recipient"}],
  "totalMemberCount": 1024
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "mailtips resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->