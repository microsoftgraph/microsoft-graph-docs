# Overview of social intelligence and analytics in Microsoft Graph

The hundreds of millions of users of Microsoft 365 cloud services form part of the core of Microsoft Graph. The users' data is carefully managed, protected, and with proper authorization, made available by Microsoft Graph services to drive productivity and creativity in businesses. As ubiquitous the user's data is in Microsoft Graph, data derived from the user's social interactions is particularly interesting. It provides intelligent insights that can answer questions such as the following:

- "Who should this user contact for information on this topic?"
- "Which documents are most interesting to this person?"

You can use the people API and insights API in Microsoft Graph to build smarter apps that can access the relevant people and documents for a user.

The people API returns people ordered by relevance to a user, based on that user's contacts, social networks, organization directory, and recent communications on email and Skype. This is particularly useful for people-picking scenarios.

The insights API uses advanced analytics and machine learning to provide the most relevant files users need throughout their work day. The API powers familiar Office 365 experiences, including Office Delve, SharePoint Home, the Discover view in OneDrive for Business, and Outlook on the web.

![People and insights API return relevant people and documents for a user](images/social-intel-concept-overview-data.png)

## Why integrate with people data?

The people API returns data of a single entity, [person](../api-reference/v1.0/resources/person.md), which includes typical data of an individual in today's business world. What makes this **person** data especially useful is its _relevance_ with respect to a Microsoft Graph user. Relevance is noted in a relevance score of each person, calculated based on the user's communication and collaboration patterns and business relationships. There are 3 main types of application of this _relevance_ data.

### Browse people relevant to the signed-in user

With [authorization](people_example.md#authorization) by the signed-in user, you can get a collection of **person** objects, starting by default with the most relevant to the signed-in user. You can further [customize](people_example.md#browse-people) the collection of **person** objects to be returned in the response by specifying query parameters.

### Fuzzy searches based on people criteria

The people API lets you search for people relevant to the signed-in user or other users in the signed-in user’s organization, provided that respectively, your app has got permissions by the signed-in user or by the administrator. (Read more on [people permissions](permissions_reference.md#people-permissions).)

Fuzzy searches return results based on an exact match and also on inferences about the intent of the search. To illustrate this, the following example returns **person** objects relevant to the signed-in user whose name, _or email address_, contains a word that starts with 'j'.

<!-- { "blockType": "ignored" } -->
```http
GET /me/people/?$search=j
```

### Fuzzy searches based on topic criteria

The people API also lets you perform searches for people who are relevant to the signed-in user, and have expressed an interest in communicating with that user over certain "topics". Topics are just words that have been used most by users in email conversations. Microsoft extracts such words, free of their contexts, and creates an index for this data to facilitate fuzzy searches.

The following example illustrates inferences about the intent of a search on the topic "beetle":

<!-- { "blockType": "ignored" } -->
```http
GET /me/people/?$search="topic:beetle" 
```

A fuzzy search in the topic data index return instances that mean the beetle insect, the iconic Volkswagen Beetle car, and other definitions.


## Why integrate with document-based insights (preview)?

### Use intelligence to improve collaboration

During a typical work day, users often interact with large amounts of information stored across many documents and collaborate with other users in many different ways. It's important that they can always can find what they need, when they need it.

You can use the insights API, which includes the [trending](../api-reference/beta/resources/insights_trending.md), [shared](../api-reference/beta/resources/insights_shared.md), and [used](../api-reference/beta/resources/insights_used.md) APIs, to surface files from across Office 365 based on your users' current context and needs, making users more productive and improving collaboration in your organization.

It is easy to render the results from the insights API in your app. Every result comes with a set of common visualization properties, like a preview image URL or preview text.

### Make relevant content visible

In Office 365, Delve uses the _trending_ insight to help users discover the documents that are most interesting to them right now. See figure 1.

Programmatically, you can use the [trending](../api-reference/beta/resources/insights_trending.md) entity in the insights API to provide your app customers a similar experience. Use the **trending** entity to connect to documents that are trending around and relevant to the user. [Listing trending documents](../api-reference/beta/api/insights_list_trending.md) returns those files stored on OneDrive or SharePoint team sites, sorted by relevance with the most important ones first. 

**Figure 1. Delve in Office 365 showing popular documents for a user**

![Screenshot of Delve in Office 365 showing popular documents for a user](images/delve_concept.png)

### Allow users to collaborate and get back to work

The new Office 365 people cards tap into the _used_ and _shared_ insights to connect the dots between people and units of knowledge. The people card identifies and displays relevant documents about a person. Users can see people cards across the suite, for example, in Outlook on the web. See figure 2.

The insights API provides a similar functionality with the [used](../api-reference/beta/resources/insights_used.md) and [shared](../api-reference/beta/resources/insights_shared.md) entities. They return what a user has been viewing or working on most recently, or what colleagues have shared with the user most recently in Office 365.

**Figure 2. Outlook on the web showing a people card for a user**

![Screenshot of a people card for a user in Outlook on the web, showing recent files](images/peoplecard_concept.png)

## Next steps

* Use the [Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer) to try out the people and insight APIs with your own files. Sign in, and choose **Show more samples** in the column on the left. Use the menu to turn on **People** and **Insights (beta)**.
* Find more about the [people API](people_example.md) and the [person](../api-reference/v1.0/resources/person.md) entity.
* To get started with insights API, see [Use the insights API](../api-reference/beta/resources/insights.md).
