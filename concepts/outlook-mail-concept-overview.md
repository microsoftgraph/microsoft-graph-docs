# Outlook mail overview

Outlook is a messaging communication hub in Office 365. It also lets you manage contacts, schedule meetings, find information about users in an organization, 
initiate online conversations, share files, and collaborate in groups.

## Why integrate with Outlook mail?

### Integrate with rich features and reach hundreds of millions of customers

Integrating with Outlook means tapping into the rich experience that customers love - consistent, intuitive experience for mail, contacts, calendar, and tasks, available on all devices - mobile, web, and desktop.

<!-- Change links to overviews of contacts, calendar, tasks when they exist.
-->

Using [Microsoft Graph](overview.md), you can integrate with Outlook by writing an app just once and reach more than 400 million consumers, 
and tens of millions of organization customers who choose Outlook as their email client. You can write apps that focus on mail scenarios, or 
connect to a wealth of other Outlook and non-Outlook relationships, resources, and intelligence, and realize scenarios supported by the Microsoft cloud.

### Automate message organization and processing

<!-- Change API links to v1 once they GA in February
-->
Customers like how Outlook help them stay organized. Microsoft Graph brings these features to app developers, enabling them to build customer workflows that optimize on discovery and improve efficiency and productivity: 

- Customers organize their messages in different ways - some leave all messages in the Inbox and simply search for them, others file their messsages in folders. They like Outlook's flexible and intuitive approach that supports both flat and folder-based organizations. Apps can conveniently [filter, search, or sort](query_parameters.md) messages in specific folders or the user's entire mailbox.

- Outlook categories are differentiated by name and color. Categories allow customers to tag messages to enhance organization and discovery. Apps can access and [define a user's master list of categories](../api-reference/beta/api/outlookuser_post_mastercategories.md). More, that list is shared across Outlook messages, 
as well as events, contacts, tasks, and group posts, and opens up creative scenarios for app developers. For example, an online training provider can color-code the emails, course events, and follow-up assignments for each course a user has enrolled in.

- Additionally, app users can change the importance of a message (event, or task), or flag (preview) a message for follow-up. 

- The rules API takes message organization to the next level. Apps can set up [Inbox rules](../api-reference/beta/resources/messagerule.md) to promptly handle incoming messages and reduce email clutter. For example, an app can automatically move messages to another folder if their subject lines contain certain keywords, and assign categories and importance to make them easier for later follow-up.

### Write smarter apps that leverage intelligence 

Use Microsoft Graph to suggest contextual data to your app users:

- Integrate with [Focused Inbox](../api-reference/v1.0/resources/manage_focused_inbox.md) and [@-mentions (preview)](../api-reference/beta/api/message_get.md#request-2) and let your app users read and respond to what's relevant to them first. 

- Check [mail tips (preview)](../api-reference/beta/resources/mailtips.md) while still composing a message to get useful status information about a recipient (such as the recipient sending an auto-reply or has a full mailbox). Mail tips can alert you of certain conditions so that your app can take more efficient follow-up actions instead. 

- Make use of the [people API](people_example.md) to provide interactive controls such as a people picker in your app. The people API can suggest persons most relevant to a user, based on the user’s communication and collaboration patterns and business relationships. 

- Offer app users a smart file picker and suggest files that they have recently interacted with, to add as attachments when composing a message. [Insights](../api-reference/beta/resources/insights.md) use advanced analytics to suggest files that are trending around a user, recently viewed or edited by the user, or shared with the user.


### Store app data in a resource or resource instance

Often times apps have to store their data in an external data store and entail overhead in managing and accessing the data. Microsoft Graph lets your app simply [store custom data in individual resource instances](extensibility_open_users.md), or, if appropriate, extend the schema, add custom properties, and store typed data in Microsoft Graph resources. You can make such [schema extensions](extensibility_schema_groups.md) discoverable and shareable. 


## Next steps

Learn about:

- [Creating and sending messages](outlook-create-send-messages.md)
- Ways to [organize messages](outlook-organize-messages.md)
- How to [share message folders](outlook-share-messages-folders.md)

Find out more about the mail API and [use cases](../api-reference/v1.0/resources/mail_api_overview.md#common-use-cases) supported in Microsoft Graph v1.0.


