# Create and send Outlook messages

Emails are represented by the [message](../api-reference/v1.0/resources/message.md) resource in Microsoft Graph. 

By default, messages are identified by a unique entry ID in the **id** property. A store provider assigns a message an entry ID when the message is initially 
saved as a draft or sent. That ID changes when the message is copied or moved to another folder, store, or .PST file.

## Creating and sending mail

In Outlook, you can create and send an email in the same [sendMail](../api-reference/v1.0/api/user_sendmail.md) action, or you can [create](../api-reference/v1.0/api/user_post_messages.md) a draft, subsequently [add content](../api-reference/v1.0/api/message_update.md) and [send](../api-reference/v1.0/api/message_send.md) the draft.

Similarly, when responding to an email, you can create and send the response in the same action ([reply](../api-reference/v1.0/api/message_reply.md), [reply-all](../api-reference/v1.0/api//message_replyall.md), or [forward](../api-reference/v1.0/api/message_forward.md)). Or, you can create a draft for the response ([reply](../api-reference/v1.0/api/message_createreply.md), [reply-all](../api-reference/v1.0/api//message_createreplyall.md), or [forward](../api-reference/v1.0/api/message_createforward.md)), [add content](../api-reference/v1.0/api/message_update.md), and then [send](../api-reference/v1.0/api/message_send.md) the draft at a later time.

To distinguish between a draft and a sent message programmatically, check the **isDraft** property. 

By default, draft messages are saved in the `Drafts` folder, sent messages are saved in the `Sent Items` folder. For convenience, you can identify the Drafts folder and SentItems folder by their corresponding well-known folder names. For example, you can do the following to [get the messages](../api-reference/v1.0/api/user_list_messages.md) in the Drafts folder:

```http
GET /me/mailfolders('Drafts')
```

### Body format and malicious script

<!-- Remove the following 2 sections from the message.md topics 
-->

The message body can be either HTML or text, with HTML as the default message body type returned in a GET response.

When [getting a message](../api-reference/v1.0/api/message_get.md), you can specify the following request header to return the **body** and **uniqueBody** properties in text format:

```
Prefer: outlook.body-content-type="text"
```
You can specify the following header, or, just skip the header, to get the message body in HTML format:
```
Prefer: outlook.body-content-type="html"
```

When you specify either header, a successful response would include the corresponding `Preference-Applied` header:

- For text format requests: `Preference-Applied: outlook.body-content-type="text"`
- For HTML format requests: `Preference-Applied: outlook.body-content-type="html"`

If the body is HTML, by default, Outlook removes any potentially unsafe HTML (for example, JavaScript) embedded in the **body** property before returning the body content in a REST response.

To get the entire, original HTML content, include the following HTTP request header:
```
Prefer: outlook.allow-unsafe-html
```

### Differentiating the from and sender properties

When a message is being composed, in most cases, Outlook sets the **from** and **sender** properties to the same signed-in user. You can update these properties in the following scenarios:

- The **from** property can be changed if the Exchange administrator has assigned **sendAs** rights of the mailbox to some other users. The administrator can do this by selecting **Mailbox Permissions** of the mailbox owner in the Azure portal, or by using the Exchange Admin Center or a Windows PowerShell Add-ADPermission cmdlet. Then, you can programmatically set the **from** property to one of these users who have **sendAs** rights for that mailbox.
- The **sender** property can be changed if the mailbox owner has delegated one or more users to be able to send messages from that mailbox. The mailbox owner can delegate in Outlook. When a delegate sends a message on behalf of the mailbox owner, Outlook sets the **sender** property to the delegate’s account, and the **from** property remains as the mailbox owner. Programmatically, you can set the **sender** property to a user who has got delegate permissions for that mailbox.

## Using MailTips to check recipient status and save time (preview)

Use [MailTips](../api-reference/beta/resources/mailtips.md) to make smart decisions before sending an email. 
MailTips can tell you information such as the recipient's mailbox is restricted to specific senders, or approval is required for emailing the recipient.

## Integrating with '@' social gesture (preview)

@-mentions are notifications to alert users if they are mentioned in messages. The [mention](../api-reference/beta/resources/mention.md) resource enables apps to set and get the common online social gesture, the '@' prefix, in emails.
You can:

- Create @-mentions when [creating a message](../api-reference/beta/api/user_post_messages.md#request-2)
- [Get all the messages in a user's mailbox that contain an @-mention of the user](../api-reference/beta/api/user_list_messages.md#request-2)
- [Get all the @-mention is a message](../api-reference/beta/api/message_get.md#request-2) 


## Other shared capabilities

Take advantage of the following common capabilities that are shared among Microsoft Graph entities:

- Subscribe to [change notifications](../api-reference/v1.0/resources/webhooks.md) on messages when one or more types of changes occur, such as message creation or update.
- [Track these incremental changes to messages in a folder](delta_query_messages.md).
- Create [open extensions](extensibility_overview.md#open-extensions) or [schema extensions](extensibility_overview.md#schema-extensions) to add custom data to a message instance.
- Create [extended properties](../api-reference/v1.0/resources/extended-properties-overview.md) in a message instance to store custom data for Outlook MAPI properties, when these properties are not already exposed in the Microsoft Graph API metadata.

## Next steps

Find out more about:

- [Why integrate with Outlook mail](outlook-mail-concept-overview.md)
- [Using the mail API](../api-reference/v1.0/resources/mail_api_overview.md) and its [use cases](../api-reference/v1.0/resources/mail_api_overview.md#common-use-cases) in Microsoft Graph v1.0.