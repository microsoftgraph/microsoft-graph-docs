---

title: "Use Graph Explorer to try Microsoft Graph APIs"
description: "Use Graph Explorer to try Microsoft Graph APIs on the default sample tenant to explore capabilities, or sign in to your own tenant and use it as a prototyping tool to fulfill your app scenarios."
localization_priority: Normal
author: bettirosengugi

---

# Use Graph Explorer to try Microsoft Graph APIs

[Graph Explorer](https://developer.microsoft.com/graph/graph-explorer/) is a developer tool that lets you conveniently make Microsoft Graph REST API requests and view corresponding responses. Use Graph Explorer to try APIs on the default sample tenant to explore capabilities, or sign in to your own tenant and use it as a prototyping tool to fulfill your app scenarios. This tool includes helpful features such as code snippets in C#, Java, JavaScript, and Objective C; Microsoft Graph Toolkit and adaptive cards integration; and more.

Use Graph Explorer to:

- Make Microsoft Graph API requests (GET, POST, PUT, PATCH and DELETE) and see responses including response code and any headers and bodies.
- Consent to permissions.
- Add a request body and request header to your query.
- View and copy the access token.
- View sample queries for different services in Microsoft Graph.
- View, download, or delete the queries you ran in the last 30 days.
- View and copy code snippets of each query you run in C#, Java, JavaScript, and Objective C.
- Access Microsoft Graph Toolkit components and adaptive cards for some sample queries.
- Share queries, including the request body and request headers.

Graph Explorer handles the authentication process for you. Customize the experience by collapsing the sidebar and changing the theme.

## Get started

Graph Explorer is a web application hosted on the [Microsoft Graph developer center](https://developer.microsoft.com/en-us/graph/graph-explorer). It's an open source project,  and we welcome your contributions and feedback in the [GitHub repo](https://github.com/microsoftgraph/microsoft-graph-explorer-v4).

Graph Explorer includes the following elements:

1. HTTP verb drop-down list
2. API version drop-down list
3. Request query address bar
4. Sample query
5. Documentation link for the sample query

![Screenshot of the Graph Explorer user interface](./images/getting-started.png)

### Make a GET request in Graph Explorer

To run a GET request in Graph Explorer, you don’t have to be signed in. Just click a sample query and sample data will show in the response preview. 

![Screenshot of a sample request in Graph Explorer](./images/making-a-get-request.png)

To make a request:

1. Select a sample query and run it.
2. Get the HTTP response code.
3. See the response from the Microsoft Graph API with sample data.

When you sign in to Graph Explorer and click the same query, the response will be returned with real data from the tenant you signed in to.

### Running non-GET requests in Graph Explorer

To try POST, PUT, PATCH and DELETE requests, sign in to Graph Explorer using a Microsoft 365 account.This can be an organizational account for testing or demonstration purpose. To get a free sample Microsoft 365 E5 developer subscription, along with tools and other resources to help you build solutions for the Microsoft 365 platform, join the [Microsoft 365 Developer Program](https://developer.microsoft.com/microsoft-365/dev-program). 

>[!IMPORTANT]
>If you choose to sign in using your organizational account, running a non-GET request can affect the data in the tenant.

For example, to run a POST request, select POST in the drop-down list for the HTTP verb, and add a request body and request headers as appropriate.

![Screenshot of a POST request in Graph Explorer](./images/making-a-post-request.png)

1. Select a POST sample query.
2. Update **Request body**; for example, give the application a name.
3. Click **Run query**.
4. See the response from the Microsoft Graph API.

To view the response in a format other than the default JSON, choose the **Request headers** tab in the request pane, define the key/value pair, and click **Add**.

![Screenshot that shows the Request headers tab in Graph Explorer](./images/adding-key-value-pairs.png)

## Next steps

- Visit [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer/).
- Learn more about [Graph Explorer features](./graph-explorer-features.md).
- Contribute or provide feedback in the [GitHub repo](https://github.com/microsoftgraph/microsoft-graph-explorer-v4/issues/new/choose).
