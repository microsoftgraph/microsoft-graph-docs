# invitation manager

Use the invitation manager to create an invite, in order to add an external user to the organization. 

The invitation process uses the following flow:
* An invitation is created
* An invitation is sent to the invited user (containing an invitation link)
* The invited user clicks on the invitation link, signs in and redeems the invitation and creation of the user entity representing the invited user completes
* The user is redirected to a specific page after redemption completes

Creating an invitation will return a redemption URL in the response (*inviteRedeemUrl*). The create invitation API can automatically send an email containing the redemption URL to the invited user, by setting the *sendInvitationMessage* to true. You can also customize the message that will be sent to the invited user. Instead, if you wish to send the redemption URL through some other means, you can set the *sendInvitationMessage* to false and use the redeem URL from the response to craft your own communication. Currently, there is no API to perform the redemption process. The invited user has to click on the *inviteRedeemUrl* link sent in the communication in the step above, and go through the interactive redemption process in a browser. Once completed, the invited user becomes an external user in the organization.


### Methods
| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Create invitation](../api/invitation_post.md) | invitation | Write properties and relationships of invitation object.|

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|invitedUserDisplayName|String|The display name of the user being invited.|
|invitedUserEmailAddress|String|The email address of the user being invited. Required.|
|invitedUserMessageInfo|[invitedUserMessageInfo](invitedusermessageinfo.md)|Additional configuration for the message being sent to the invited user, including customizing message text, language and cc recipient list.|
|sendInvitationMessage|Boolean|Indicates whether an email should be sent to the user being invited or not. The default is false.|
|inviteRedirectUrl|String|The URL user should be redirected to once the invitation is redeemed. Required.|
|inviteRedeemUrl|String|The URL user can use to redeem his invitation. Read-Only|
|status|String|The status of the invitation. Possible values: Completed, InProgress, and Error|

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|invitedToGroups|List<[Group](group.md)>|The groups the user is invited to. Currently, only one group is supported per request. Once the invitation is redeemed, the invited user will be added as a member to the specified group.|
|invitedUser|[User](user.md)|The user created as part of the invitation creation. Read-Only|

### JSON representation

Here is a JSON representation of the resource

```json
{
  "invitedUserDisplayName": "string",
  "inviteUserEmailAddress": "string",
  "invitedUserMessageInfo": {"@odata.type": "microsoft.graph.InvitedUserMessageInfo"},
  "sendInvitationMessage": false,
  "inviteRedirectUrl": "string",
  "inviteRedeemUrl": "string",
  "status": "string",

  "invitedToGroups": [{"@odata.type": "microsoft.graph.group"}],
  "invitedUser": [{"@odata.type": "microsoft.graph.User"}]
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2016-22-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "invitation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
