---
title: "Use Postman with the Microsoft Graph API"
description: "Use the Microsoft Graph Postman collection to get started with Microsoft Graph APIs in minutes."
author: "jthake-msft"
localization_priority: Priority
---

# Use Postman with the Microsoft Graph API

You can use the Microsoft Graph Postman collection to get started with Microsoft Graph APIs in minutes.

![Image of Postman](https://github.com/microsoftgraph/microsoftgraph-postman-collections/blob/master/images/postman.png?raw=true)

This article explains how to get up and running with Postman and Microsoft Graph. You can also explore Microsoft Graph APIs directly in your web browser by using [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).

## Accessing the collection
You can access the collection in Postman in two ways: by consuming it or by contributing to it. You will need to have [Postman](https://www.getpostman.com/) running on your computer first.

### Consume the collection
Consuming the collection is the easiest way to get started with Microsoft Graph APIs. The [Postman sharing link](https://www.getpostman.com/collections/d89a737b5f0c0825898a) will launch Postman.

The advantage to using the shared collection is that new requests will automatically show for you without any additional steps.

After you have the collection, you'll need to set up the environment variables:

1. Choose **File | Import ...**.
2. Select **Import From Link**.
3. Copy and paste the following URL and choose **Import**.
 
    ```
    https://raw.githubusercontent.com/microsoftgraph/microsoftgraph-postman-collections/master/Microsoft%20Graph.postman_environment.json
    ```

You should now see the **Microsoft Graph environment** in the top right environment drop down by the eye icon. Now you need to  [set up your environment](#using-the-collection).

### Contribute to the collection
If you want to contribute your own requests, you will need to fork the [Microsoft Graph Postman collections](https://github.com/microsoftgraph/microsoftgraph-postman-collections) github repo. 

For details about how to do this, watch the following video.

> [!VIDEO https://www.youtube-nocookie.com/embed/4tg-OBdv_8o]

To import the Postman collections:

1. Download and register for [Postman](https://www.getpostman.com/).
2. Choose **File | Import ...**.
3. Select **Import From Link**.
4. Paste the following two URLs and choose **Import** after each.

    ```
      https://raw.githubusercontent.com/microsoftgraph/microsoftgraph-postman-collections/master/Microsoft%20Graph.postman_collection.json
      
    ```
    ```
      https://raw.githubusercontent.com/microsoftgraph/microsoftgraph-postman-collections/master/Microsoft%20Graph.postman_environment.json

    ```

You should now see the **Microsoft Graph** collection on the **Collections** pane.

## Using the collection
After you have the **Microsoft Graph** collection and the **Microsoftr Graph environment** in Postman, follow these steps.

### Set up application API calls

1. Choose the **No environment** drop down in top right corner.
2. Select **Microsoft Graph environment**.
3. Choose the **eye** icon to the right and then choose **Edit**.
4. Enter your Microsoft Identity Application in the **current** (not **initial**) variables: **ClientID**, **ClientSecret** and **TenantID**. 
 For more information about how to create an application and to admin consent the app-only flow, see the [Use Postman to make Microsoft Graph calls](https://developer.microsoft.com/en-us/graph/blogs/30daysmsgraph-day-13-postman-to-make-microsoft-graph-calls/) blog post.

5. Select **Update**. Close the **Manage Environments** dialog box. In the **MicrosoftGraph | Application** collection on left side, choose **Get App-only Access Token**. Then choose **Send** on the right.
6. Expand the **Application | Users** folder and choose **Get Users**. Then choose **Send**.

You are now up and running with the Microsoft Graph collections.

>**Note:** If you want to run other APIs in the collection, you will need to consent the required permissions for your application.

### Set up on-behalf-of API calls
The simplest way to set up on-behalf-of API calls is to provide a **UserName** and **UserPassword** in the environment settings and use the **On Behalf of a User | Get User Access Token**. 

>**Important:** We don't recommend using production user accounts because this information is stored directly in Postman. We also don't  recommend using this approach to obtain access tokens in production. Use it only for testing purposes.

If you don't want to store user names and passwords in environment variables that sync to your Postman cloud account, you can use the  **Get New Access Token** capability to get a token without leaving Postman.

1. Select **On behalf of a User | Get Access Token using Postman**.
2. Choose the **Authorization** tab.
3. Choose the **get access token** button.
4. Fill out the following boxes with your real tenant and application values. Note that you cannot use the environment variables here; you have to use the actual values. You can find them by selecting **EndPoints** in the application blade in portal.azure.com.

    - Callback URL: https://app.getpostman.com/oauth2/callback
    - Auth URL: https://login.microsoftonline.com/**TENANTID**/oauth2/v2.0/authorize
    - Access Token URL: https://login.microsoftonline.com/**TENANTID**/oauth2/v2.0/token
    - Client ID: **CLIENTID**
    - Client Secret: **CLIENTSECRET**
    - Scope: https://graph.microsoft.com/.default
    - State: **RANDOMSTRING**
 
5. Choose **Request Token**. You should see a UI prompt to sign in and consent permissions.
6. Copy the access token, open your environment variables, and paste it into the **UserAccessToken** field.

Now all your requests will work.
