# Share Outlook message folders between users

<!-- remove similar content in other topics when ready to publish - list messages, get message, get mail folder.
These topics also have similar section - list events, get event, get calendar, list contacts, get contact, get contact folder.
-->

Outlook lets customers share folders with one another and provide "read", "create", or "modify" access to individual folders or the entire mailbox. This is also 
known as "delegation" in Outlook.

Programmatically, Microsoft Graph supports getting messages in mail folders that have been shared by other users, as well as getting the shared folders themselves.

As an example, Garth has shared with John read access to Garth's Inbox. If John has signed in your app and provided delegated permissions (Mail.Read.Shared or
Mail.ReadWrite.Shared), your app will be able to access Garth's mail and Garth's Inbox as described below.

## Get a message in the shared folder

You can get a specific message in Garth's Inbox:

<!-- { "blockType": "ignored" } -->
```http
GET users/{Garth-userId | Garth-userPrincipalName}/mailfolders('Inbox')/messages/{id}
```

On successful completion, you'll get HTTP 200 OK and the [message](../api-reference/v1.0/resources/message.md) instance identified by `{id}` from Garth's Inbox.

## Get all messages in the shared folder

Get all the messages in Garth's Inbox:

<!-- { "blockType": "ignored" } -->
```http
GET users/{Garth-userId | Garth-userPrincipalName}/mailfolders('Inbox')/messages
```

On successful completion, you'll get HTTP 200 OK and a collection of [message](../api-reference/v1.0/resources/message.md) instances in Garth's Inbox.

## Get the shared folder

Get the folder (Inbox) that Garth has shared with John.

<!-- { "blockType": "ignored" } -->
```http
GET users/{Garth-userId | Garth-userPrincipalName}/mailfolders('Inbox')
```

On successful completion, you'll get HTTP 200 OK and a [mailFolder](../api-reference/v1.0/resources/mailfolder.md) instance that represents Garth's Inbox folder.

The same GET capabilities apply if Garth had delegated John further access to Garth's Inbox, or if Garth had delegated John his entire mailbox.

If Garth has not shared his message folder with John, nor has he delegated his mailbox to John, specifying Garth’s user ID or user principal name in those GET operations will return an error. 


## Next steps

Find out more about:

- [Why integrate with Outlook mail](outlook-mail-concept-overview.md)
- [Using the mail API](../api-reference/v1.0/resources/mail_api_overview.md) and its [use cases](../api-reference/v1.0/resources/mail_api_overview.md#common-use-cases) in Microsoft Graph v1.0.