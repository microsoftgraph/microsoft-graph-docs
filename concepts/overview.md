# Overview of Microsoft Graph

You can use the Microsoft Graph API interact with the data of millions of users in the Microsoft cloud. Use Microsoft Graph to build apps for organizations and consumers that connect to a wealth of resources, relationships, and intelligence, all through a single endpoint: `https://graph.microsoft.com`.

## What's in the graph?

Microsoft Graph is made up of resources connected by relationships. For example, a user can be connected to a group through a [memberOf](../api-reference/v1.0/api/user_list_memberof.md) relationship, and to another user through a [manager](../api-reference/v1.0/api/user_list_manager.md) relationship. Your app can traverse these relationships to access these connected resources and perform actions on them through the API.

You can also get valuable insights and intelligence about the data from Microsoft Graph. For example, you can get the popular files [trending around](../api-reference/beta/resources/insights_trending.md) a particular user, or get the most relevant [people](../api-reference/beta/api/user_list_people.md) around a user.

Discover the possibilities in the relationships within Microsoft Graph.

![An image showing the primary resources and relationships that are part of the graph](images/microsoft_graph_600.png)

## What can you do with Microsoft Graph? 

You can use Microsoft Graph to build experiences around the user's unique context to help them be more productive. Imagine an app that...

- Looks at your next meeting and helps you prepare for it by providing profile information for attendees, including their job titles and who they work with, as well as information on the latest documents and projects they're working on.
- Scans your calendar, and suggests the best times for the next team meeting.
- Fetches the latest sales projection chart from an Excel file in your OneDrive and lets you update the forecast in real time, all from your phone.
- Subscribes to changes in your calendar, sends you an alert when you’re spending too much time in meetings, and provides recommendations for the ones you could miss or delegate based on how relevant the attendees are to you.
- Helps you sort out personal and work information on your phone; for example, by categorizing pictures that should go to your personal OneDrive and business receipts that should go to your OneDrive for Business.

You can do all this and more with the Microsoft Graph API.

## Next steps

- Check out some [Featured scenarios](featured_scenarios.md).
- Try a sample request in the [Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer)
- Use the [quick start](https://developer.microsoft.com/en-us/graph/graph-explorer) to set up a ready-to-run sample app.
- Find out how to [get an auth token](auth_overview.md) in your app.
- Start [using the API](use_the_api.md).

## Feedback?

Your feedback is important to us. Connect with us on [Stack Overflow](http://stackoverflow.com/questions/tagged/office365+or+microsoftgraph). Tag your questions with {MicrosoftGraph}.

