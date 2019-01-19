# Update chatMessage with DLP violations

Update a chatMessage with a Data Loss Prevention (DLP) policy violation.
## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](https://docs.microsoft.com/en-us/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Not supported.    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | ChatMessage.PatchPolicyViolation.All to update a chat message. ChannelMessage.UpdatePolicyViolation.All to update a channel message. |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /teams/(team-id)/channels/{channel-id}/chatMessages/{message-id}
PATCH users/(user-id)/chats/{chatThread-id}/chatMessages/{message-id}
```

## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer {token}. Required. |
| Content-Type | string  | Nature of the data in the body of an entity. Required. |
## Request body
In the request body, supply the properties for the Data Loss Prevention (DLP) violation. 'policyViolation' is the parent property for the following DLP properties.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| policyTip | JSON | The policy tip for the DLP violation. See the following table for details about the structure |
| verdictDetails | Bitwise Enum | Indicates the details of the allowed sender actions based on the verdict of the DLP app for the message processed. Possible values are None (0), AllowFalsePositiveOverride (1), AllowOverridewithoutJustification (2), AllowOverridewithJustification (4). |
| dlpAction | Bitwise Enum | Indicates the action taken by DLP app on the message with sensitive content. Possible values are None (0),  NotifySender (1), BlockAccess (2), BlockAccessExternal (4). |
| userAction | Bitwise Enum | Indicates the action taken by user on the message with sensitive content after DLP has blocked the message. Possible values are None (0), Override (1) and ReportFalsePositive (2). When the DLP app is updating the message for blocking sensitive content, userAction is not required in the request payload. |
| justificationText | String | Justification text provided by the sender of message. When the DLP app is updating the message for blocking sensitive content, justificationText is not required in the request payload. |


#### policyTip JSON 
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| generalText | string | The explanatory text shown to the sender of the message that was flagged. |
| complianceUrl | string | The URL that represents the DLP policies of the organization or a page the admin chooses to configure to provide more information about DLP policies in the organization. |
| matchedConditionDescriptions | IEnumerable\<string\> | The set of sensitive types that were a match during classification of the given message. The values are defined by the DLP app. Example: Credit Card Information, Social Security Number.|

#### verdictDetails enum

| Property	   | Int value |  Description |
|:---------------|:--------|:----------|
| None | 0 |  User is not allowed to override the message. User is not allowed to report a message as false positive if policyTip is not provided. In all other scenarios, user can report a message as false positive.|
| AllowFalsePositiveOverride | 1 |  User is not allowed to explicitly override the block unless this is combined with ```AllowOverrideWithoutJustification``` or ```AllowOverrideWithJustification``` flags. Reporting a false positive on the violation automatically overrides the block and sends the message. |
| AllowOverrideWithoutJustification | 2 | User is allowed to override the block and send the message. Justification text is not required. Exclusive to ```AllowOverrideWithJustification```. |
| AllowOverrideWithJustification | 4 |  User is allowed to override the block and send the message. Justification text is required. Exclusive to ```AllowOverrideWithoutJustification```. |

#### dlpAction enum
| Property	   | Int value |  Description |
|:---------------|:--------|:----------|
| None | 0 | Default value. This is the value on a message which has not yet been evaluated by DLP processing or has been evaluated but is a pass.|
| NotifySender | 1 | Sender is notified of the message violating one of the policies set by tenant admin, but the message is not blocked from being sent. |
| BlockAccess | 2 | Message is blocked from being sent based on DLP processing. |
| BlockAccessExternal  | 4 | Message is blocked from being sent only if there are external users in the conversation thread. This is currently unused and Teams treat BlockAccessExternal as ```BlockAccess```. |

#### userAction enum
| Property	   | Int value |  Description |
|:---------------|:--------|:----------|
| None | 0 | Default value. This is the value on a message when the user has not taken an action on the message blocked by DLP. |
| Override | 1 | Sender has overridden the message verdict and sent the message anyway.|
| ReportFalsePositive | 2 | Sender has reported the message verdict to the admins as a false positive.|

>**Note:** When the **verdictDetails** enum has `AllowFalsePositiveOverrid`e as one of the flags and the user reports the message as a false positive, the user action will be set to `Override, ReportFalsePositive`.

## Response

If successful, this method returns a `200 OK` response.
## Example
##### Request
The following is an example of the request for updating DLP properties on a Teams channel message.
<!-- {
  "blockType": "request",
  "name": "chatMessage.PatchPolicyViolation.All"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/teams/{group-id}/channels/{channel-id}/messages/{message-id}
Content-type: application/json
Content-length: 248

{
	"policyViolation": {
		"policyTip": {
			"generalText" : “This item has been blocked by administrator.”,
			"complianceUrl" : " https: //contoso.com",
			"matchedConditionDescriptions" : ["Credit Card Number"]
		},
		"verdictDetails" : AllowOverrideWithoutJustification,AllowFalsePositiveOverride,
		"dlpAction" : BlockAccess
	}
}
```

##### Response
Here is an example of the response. 
<!-- {
  "blockType": "response",
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 0

{
}
```

<!-- uuid: ??????????????
2018-04-20 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "chatMessage.PatchPolicyViolation.All",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
