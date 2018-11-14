# Get Outlook contacts in a shared folder

Outlook lets customers share folders with one another and provide "read", "create", "modify", or "delete" access to individual contact folders. Outlook also allows a customer to delegate another user to act on the customer's behalf, and access specific folders or the customer's entire mailbox; this is also 
known as "delegation" in Outlook.

Programmatically, Microsoft Graph supports getting contacts in contact folders that have been shared by other users, as well as getting the shared folders themselves. The support also applies to folders in a delegated mailbox.

As an example, Garth has shared with John a custom contact folder and given John read access. If John has signed into your app and provided delegated permissions (Contacts.Read.Shared or Contacts.ReadWrite.Shared), your app will be able to access Garth's custom contact folder and contacts in that folder as described below.

## Get a contact in the shared folder

You can get a specific contact in the custom contact folder that Garth has shared with John:

<!-- { "blockType": "ignored" } -->
```http
GET users/{Garth-userId | Garth-userPrincipalName}/contactFolders/{folder-id}/contacts/{id}
```

On successful completion, you'll get HTTP 200 OK and the [contact](../api-reference/v1.0/resources/contact.md) instance identified by `{id}` from Garth's shared contact folder.

## Get all contacts in the shared folder

Get all the contacts in Garth's shared contact folder:

<!-- { "blockType": "ignored" } -->
```http
GET users/{Garth-userId | Garth-userPrincipalName}/contactFolders/{folder-id}/contacts
```

On successful completion, you'll get HTTP 200 OK and a collection of [contact](../api-reference/v1.0/resources/contact.md) instances in Garth's shared contact folder.

## Get the shared folder

Get the contact folder that Garth has shared with John.

<!-- { "blockType": "ignored" } -->
```http
GET users/{Garth-userId | Garth-userPrincipalName}/contactFolders/{folder-id}
```

On successful completion, you'll get HTTP 200 OK and a [contactFolder](../api-reference/v1.0/resources/contactfolder.md) instance that represents Garth's shared contact folder.

The same GET capabilities apply if Garth had delegated John his entire mailbox.

If Garth has not shared the contact folder with John, nor has he delegated his mailbox to John, specifying Garth’s user ID or user principal name in those GET operations will return an error. 


## Next steps

Find out more about:

- [Why integrate with Outlook personal contacts](outlook-contacts-concept-overview.md)
- The [contacts API](../api-reference/v1.0/resources/contact.md) in Microsoft Graph v1.0.