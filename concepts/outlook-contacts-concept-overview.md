# Outlook personal contacts API overview

Outlook contacts lets you store personal contacts' data, and is part of the Outlook messaging hub in Office 365. Through Outlook, you can manage emails, schedule meetings, find information about users in an organization, initiate online conversations, share files, and collaborate in groups.

## Why integrate with Outlook personal contacts?

### Complement messaging and calendaring scenarios for hundreds of millions of customers

Hundreds of millions of consumers and tens of millions of organization customers choose Outlook as their email client. Contacts provide a complementary function for messaging and calendaring by letting customers maintain a convenient, integrated store of contacts data within Outlook. For developers, tapping into the rich functionality of [mail](outlook-mail-concept-overview.md) or [calendar](outlook-calendar-concept-overview.md) means opening up richer scenarios with the user's contacts data.


### Automate contact organization

The contacts API lets you keep your customers organized, in close parity as the customers do it themselves through Outlook:

- Similarly to the customer experience, you can create [contact](../api-reference/v1.0/resources/contact.md) instances and assign them to [contactFolder](../api-reference/v1.0/resources/contactfolder.md) objects.
- The contacts API lets you assign categories contacts, as well as events, messages, tasks, and group posts in a consistent way to enhance organization and disovery. In addition, you can [define a user's master list of categories](../api-reference/v1.0/api/outlookuser_post_mastercategories.md), which can open up additional creative scenarios.
- You can set a flag on a [contact](../api-reference/v1.0/resources/contact.md) for follow-up. (Flagging is currently [in preview](versioning_and_support.md#beta-version) in Microsoft Graph.)


### Share contact information

The contacts API lets you get contact items of the signed-in user, or of the users who have shared or delegated their contacts to the signed-in user. For example, if Garth has shared a contact folder with John, or if Garth has delegated access to John, then [delegated permissions](permissions_reference.md#delegated-permissions-application-permissions-and-effective-permissions) from John would give you read access to Garth's shared calendar and contents as well.


### Leverage people API in Microsoft Graph to make better use of all people data

You can use the typical CRUD operations for an Outlook [contact](../api-reference/v1.0/resources/contact.md) to create and manage contacts. As part of Microsoft Graph, you can also use the [people API](people_example.md) that looks at a user's Outlook contacts, as well as social networks, organization directory, and people from recent communication, and return information about people from all these sources that are most relevant to the user. Take advantage of this additional intelligence in people picker scenarios.


### Take advantage of other shared features and conveniences in Microsoft Graph

- The **contact** entity supports a contact photo which is implemented as the same [profilePhoto](../api-reference/v1.0/resources/profilephoto.md) entity as a user photo stored in Exchange Online or Azure Active Directory. This eliminates the overhead in converting between contact and user profile photos.
- You can keep the app local store synchronized by subscribing to [change notifications](../api-reference/v1.0/resources/webhooks.md) and [tracking changes](delta_query_overview.md) to contacts and contact folders.
- You can extend app storage in a contact instance as an [open extension](extensibility_overview.md#open-extensions), or add strongly typed custom data to the contact schema as a [schema extension](extensibility_overview.md#schema-extensions).


## Next steps

- Select and try contacts sample queries in [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer/?request=me%2Fcontacts&version=v1.0). Choose **Show more samples** in the column on the left. Use the menu to turn on **Personal contacts**.
- Learn about [getting shared contacts](outlook-get-shared-contacts-folders.md)
- Take a look at the Outlook [contacts API](../api-reference/v1.0/resources/contact.md) reference.
