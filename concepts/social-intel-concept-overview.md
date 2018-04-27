# Overview of social intelligence and analytics in Microsoft Graph

You can use the people API and insights API in Microsoft Graph to build smarter apps that can access the relevant people and documents for a user.

The people API returns people ordered by relevance to a user, based on that user's contacts, social networks, organization directory, and recent communications on email and Skype. This is particularly useful for people-picking scenarios.

The insights API uses advanced analytics and machine learning to provide the most relevant files users need throughout their work day. The API powers familiar Office 365 experiences, including Office Delve, SharePoint Home, the Discover view in OneDrive for Business, and Outlook on the web.

## Why integrate with people data?

{<=1.5 pages of value proposition for developers.}

{Here we can have People API-specific value prop section}


## Why integrate with document-based insights (preview)?

### Use intelligence to improve collaboration

During a typical working day, users often interact with large amounts of information stored across many documents and collaborate with other users in many different ways. It's important that they can always can find what they need, when they need it.

You can use the insights API, which includes the [trending](../api-reference/beta/resources/insights_trending.md), [shared](../api-reference/beta/resources/insights_shared.md), and [used](../api-reference/beta/resources/insights_used.md) APIs, to surface files from across Office 365 based on your users' current context and needs, making users more productive and improving collaboration in your organization.

It is easy to render the results from the insights API in your app. Every result comes with a set of common visualization properties, like a preview image URL or preview text.

### Make relevant content visible

The results of the [trending](../api-reference/beta/resources/insights_trending.md) API are sorted by relevance, and by default, your app will display what's most important on top.

In Office 365, Delve uses the trending insight to help users discover the information that is most interesting to them right now.

![Screenshot of Delve in Office 365 showing popular documents for a user](images/delve_concept.png)

### Allow users to collaborate and get back to work

Thanks to the [shared](../api-reference/beta/resources/insights_shared.md) and [used](../api-reference/beta/resources/insights_used.md) APIs, your app can show users what they have been working on most recently, or display what their colleagues have shared with them most recently in Office 365.

The new Office 365 people cards tap into the used and shared insights to connect the dots between people and units of knowledge. The people card identifies and displays relevant information about a person. Users can see people cards across the suite, for example in Outlook on the web.

![Screenshot of a people card for a user in Outlook on the web, showing recent files](images/peoplecard_concept.png)

## Next steps

* Use the [Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer) to try out the insight API with your own files. Choose **Show more samples** in the column on the left. Use the menu to toggle Insights (beta) **On**.
* To get started with insights API, see [Use the insights API](../api-reference/beta/resources/insights.md).
