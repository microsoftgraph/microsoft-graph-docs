# messageRulePredicates resource type


Represents the set of conditions and exceptions that are available for a rule.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| bodyContains | Collection(String) | Represents the strings that should appear in the body of an incoming message in order for the condition or exception to apply. |
| bodyOrSubjectContains | Collection(String) | Represents the strings that should appear in the body or subject of an incoming message in order for the condition or exception to apply. |
| categories | Collection(String) | Represents the categories that an incoming message should be labeled with in order for the condition or exception to apply. |
| fromAddresses | Collection([recipient](recipient.md)) | Represents the specific sender email addresses of an incoming message in order for the condition or exception to apply. |
| hasAttachments | Boolean | Indicates whether an incoming message must have attachments in order for the condition or exception to apply. |
| headerContains | Collection(String) | Represents the strings that appear in the headers of an incoming message in order for the condition or exception to apply. |
| importance | importance | The importance that is stamped on an incoming message in order for the condition or exception to apply: `low`, `normal`, `high`. |
| isApprovalRequest | Boolean | Indicates whether an incoming message must be an approval request in order for the condition or exception to apply. |
| isAutomaticForward | Boolean | Indicates whether an incoming message must be automatically forwarded in order for the condition or exception to apply. |
| isAutomaticReply | Boolean | Indicates whether an incoming message must be an auto reply in order for the condition or exception to apply. |
| isEncrypted | Boolean | Indicates whether an incoming message must be encrypted in order for the condition or exception to apply. |
| isMeetingRequest | Boolean | Indicates whether an incoming message must be a meeting request in order for the condition or exception to apply. |
| isMeetingResponse | Boolean | Indicates whether an incoming message must be a meeting response in order for the condition or exception to apply. |
| isNonDeliveryReport | Boolean | Indicates whether an incoming message must be a non-delivery report in order for the condition or exception to apply. |
| isPermissionControlled | Boolean | Indicates whether an incoming message must be permission controlled (RMS-protected) in order for the condition or exception to apply. |
| isReadReceipt | Boolean | Indicates whether an incoming message must be a read receipt in order for the condition or exception to apply. |
| isSigned | Boolean | Indicates whether an incoming message must be S/MIME-signed in order for the condition or exception to apply. |
| isVoicemail | Boolean | Indicates whether an incoming message must be a voice mail in order for the condition or exception to apply. |
| messageActionFlag | messageActionFlag  | Represents the flag-for-action value that appears on an incoming message in order for the condition or exception to apply. Possible values are: `any`, `call`, `doNotForward`, `followUp`, `fyi`, `forward`, `noResponseNecessary`, `read`, `reply`, `replyToAll`, `review`. |
| notSentToMe | Boolean | Indicates whether the owner of the mailbox must not be a recipient of an incoming message in order for the condition or exception to apply. |
| recipientContains | Collection(String) | Represents the strings that appear in either the **toRecipients** or **ccRecipients** properties of an incoming message in order for the condition or exception to apply. |
| senderContains | Collection(String) | Represents the strings that appear in the **from** property of an incoming message in order for the condition or exception to apply. |
| sensitivity | sensitivity | Represents the sensitivity level that must be stamped on an incoming message in order for the condition or exception to apply. Possible values are: `normal`, `personal`, `private`, `confidential`. |
| sentCcMe | Boolean | Indicates whether the owner of the mailbox must be in the **ccRecipients** property of an incoming message in order for the condition or exception to apply. |
| sentOnlyToMe | Boolean | Indicates whether the owner of the mailbox must be the only recipient in an incoming message in order for the condition or exception to apply. |
| sentToAddresses | Collection([recipient](recipient.md)) | Represents the email addresses that an incoming message must have been sent to in order for the condition or exception to apply. |
| sentToMe | Boolean | Indicates whether the owner of the mailbox must be in the **toRecipients** property of an incoming message in order for the condition or exception to apply. |
| sentToOrCcMe | Boolean | Indicates whether the owner of the mailbox must be in either a **toRecipients** or **ccRecipients** property of an incoming message in order for the condition or exception to apply. |
| subjectContains | Collection(String) | Represents the strings that appear in the subject of an incoming message in order for the condition or exception to apply. |
| withinSizeRange | [sizeRange](sizerange.md) | Represents the minimum and maximum sizes (in kilobytes) that an incoming message must fall in between in order for the condition or exception to apply. |

### messageActionFlag values

| Value
|:-------------------------
| any
| call
| doNotForward
| followUp
| fyi
| forward
| noResponseNecessary
| read
| reply
| replyToAll
| review

### importance values

| Value
|:-----------------
| low
| normal
| high

### sensitivity values

| Value
|:-----------------
| normal
| personal
| private
| confidential

## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
   ],
  "@odata.type": "microsoft.graph.messageRulePredicates"
}-->

```json
{
  "bodyContains": ["String"],
  "bodyOrSubjectContains": ["String"],
  "categories": ["String"],
  "fromAddresses": [{"@odata.type": "microsoft.graph.recipient"}],
  "hasAttachments": "Boolean",
  "headerContains": ["String"],
  "importance": "String",
  "isApprovalRequest": "Boolean",
  "isAutomaticForward": "Boolean",
  "isAutomaticReply": "Boolean",
  "isEncrypted": "Boolean",
  "isMeetingRequest": "Boolean",
  "isMeetingResponse": "Boolean",
  "isNonDeliveryReport": "Boolean",
  "isPermissionControlled": "Boolean",
  "isReadReceipt": "Boolean",
  "isSigned": "Boolean",
  "isVoicemail": "Boolean",
  "messageActionFlag": "String",
  "notSentToMe": "Boolean",
  "recipientContains": ["String"],
  "senderContains": ["String"],
  "sensitivity": "String",
  "sentCcMe": "Boolean",
  "sentOnlyToMe": "Boolean",
  "sentToAddresses": [{"@odata.type": "microsoft.graph.recipient"}],
  "sentToMe": "Boolean",
  "sentToOrCcMe": "Boolean",
  "subjectContains": ["String"],
  "withinSizeRange": {"@odata.type": "microsoft.graph.sizeRange"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "messageRulePredicates resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
