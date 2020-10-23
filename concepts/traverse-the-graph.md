---
title: "Access data and methods by navigating Microsoft Graph"
description: "In addition to using the Microsoft Graph API to read and write data, you can use a number of request patterns to traverse through the resources in Microsoft Graph. The metadata document also helps you to understand the data model of the resources and relationships in Microsoft Graph."
localization_priority: Priority
ms.custom: graphiamtop20, scenarios:getting-started
---

# Access data and methods by navigating Microsoft Graph

In addition to using the Microsoft Graph API to read and write data, you can use a number of request patterns to traverse through the resources in Microsoft Graph. The metadata document also helps you to understand the data model of the resources and relationships in Microsoft Graph.

## Microsoft Graph API metadata

The metadata document ($metadata) is published at the service root. You can view the service document for the v1.0 and beta versions of the Microsoft Graph API via the following URLs.

**Microsoft Graph API v1.0 metadata**
```
	https://graph.microsoft.com/v1.0/$metadata
```

**Microsoft Graph API beta metadata**

```
	https://graph.microsoft.com/beta/$metadata
```

The metadata allows you to see and understand the Microsoft Graph data model, including the entity types, complex types, and enumerations that make up the resources represented in the request and response packets. 

The metadata also supports defining types, methods, and enumerations in corresponding OData namespaces. The majority of the Microsoft Graph API is defined in the OData namespace, `microsoft.graph`.

You can use the metadata to learn the relationships between entities in Microsoft Graph and establish URLs that navigate between those entities.

> [!NOTE]
> - Use resource IDs in the same case as they are returned from Microsoft Graph APIs.
> - Assume resource IDs, values you assign, and other base-64-encoded values are _case-sensitive_.
> - Assume path URL resource names, query parameters, action and function names, their request body parameters, including any API property names and values, are _not case-sensitive_.

## View a collection of resources

Microsoft Graph lets you view resources in a tenant using HTTP `GET` queries. The query response includes properties of each resource. Entity resources are each identified by its ID. The format of a resource ID can be a GUID, and generally varies according to the resource type.

For example, you can get the collection of [user](/graph/api/resources/user?view=graph-rest-1.0) resources defined in a tenant:

```no-highlight
GET https://graph.microsoft.com/v1.0/users HTTP/1.1
Authorization : Bearer {access_token}
```

If successful, you'll get a 200 OK response that contains the collection of **user** resources in the payload. Each user is
identified by the **id** property and accompanied by its default properties. The payload shown below is truncated for brevity.

```no-highlight
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#users",
  "value":[
    {
      "id":"f71f1f74-bf1f-4e6b-b266-c777ea76e2c7",
      "businessPhones":[

      ],
      "displayName":"CIE Administrator",
      "givenName":"CIE",
      "jobTitle":null,
      "mail":"admin@contoso.onmicrosoft.com",
      "mobilePhone":"+1 3528700812",
      "officeLocation":null,
      "preferredLanguage":"en-US",
      "surname":"Administrator",
      "userPrincipalName":"admin@contoso.onmicrosoft.com"
    },
    {
      "id":"d66f2902-9d12-4ff8-ab01-21ec6706079f",
      "businessPhones":[

      ],
      "displayName":"Alan Steiner",
      "givenName":"Alan",
      "jobTitle":"VP Corporate Marketing",
      "mail":"alans@contoso.onmicrosoft.com",
      "mobilePhone":null,
      "officeLocation":null,
      "preferredLanguage":"en-US",
      "surname":"Steiner",
      "userPrincipalName":"alans@contoso.onmicrosoft.com"
    }
  ]
}
```

Microsoft Graph also lets you view collections by navigating the relationships of one resource with another. For example, through a user's **mailFolders** navigation property,
you can query for the collection of [mailFolder](/graph/api/resources/mailfolder?view=graph-rest-1.0) resources in the user's mailbox:

```no-highlight
GET https://graph.microsoft.com/v1.0/me/mailfolders HTTP/1.1
Authorization : Bearer {access_token}
```

If successful, you'll get a 200 OK response that contains the collection of [mailFolder](/graph/api/resources/user?view=graph-rest-1.0) resources in the payload. Each **mailFolder** is
identified by the **id** property and accompanied by its properties. The payload shown below is truncated for brevity.

```no-highlight
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#users('16f5a7b6-5a15-4568-aa5a-31bb117e9967')/mailFolders",
  "value":[
    {
      "id":"AAMkADRm9AABDGisXAAA=",
      "displayName":"Archive",
      "parentFolderId":"AQMkADRmZWj0AAAIBCAAAAA==",
      "childFolderCount":0,
      "unreadItemCount":0,
      "totalItemCount":0
    },
    {
      "id":"AQMkADRm0AAAIBXAAAAA==",
      "displayName":"Sales reports",
      "parentFolderId":"AQMkADRmZWj0AAAIBCAAAAA==",
      "childFolderCount":0,
      "unreadItemCount":0,
      "totalItemCount":0
    },
    {
      "id":"AAMkADRCxI9AAAT6CAIAAA=",
      "displayName":"Conversation History",
      "parentFolderId":"AQMkADRmZWj0AAAIBCAAAAA==",
      "childFolderCount":1,
      "unreadItemCount":0,
      "totalItemCount":0
    }
  ]
}
```




## View a specific resource from a collection by ID

Continuing with using **user** as an example - to view the information about a user, use an HTTPS GET request to get a specific user by the user's ID. For a **user** entity, you can use either the **id** or **userPrincipalName** property as the identifier.

The following request example uses the **userPrincipalName** value as the user's ID.

```no-highlight
GET https://graph.microsoft.com/v1.0/users/john.doe@contoso.onmicrosoft.com HTTP/1.1
Authorization : Bearer {access_token}
```

If successful, you'll get a 200 OK response that contains the user resource representation in the payload, as shown.

```no-highlight
HTTP/1.1 200 OK
content-type: application/json;odata.metadata=minimal
content-length: 982

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users/$entity",
    "id": "c95e3b3a-c33b-48da-a6e9-eb101e8a4205",
    "city": "Redmond",
    "country": "USA",
    "department": "Help Center",
    "displayName": "John Doe",
    "givenName": "John",
    "userPrincipalName": "john.doe@contoso.onmicrosoft.com",

    ...
}
```

## Read specific properties of a resource
To retrieve only the user's biographical data, such as the user's provided _About me_ description and their skill set, you can add the [$select](query-parameters.md) query parameter to the previous request, as shown in the following example.

```no-highlight
GET https://graph.microsoft.com/v1.0/users/john.doe@contoso.onmicrosoft.com?$select=displayName,aboutMe,skills HTTP/1.1
Authorization : Bearer {access_token}
```

The successful response returns the 200 OK status and a payload, as shown.

```no-highlight
HTTP/1.1 200 OK
content-type: application/json;odata.metadata=minimal
content-length: 169

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users/$entity",
    "aboutMe": "A cool and nice guy.",
    "displayName": "John Doe",
    "skills": [
        "n-Lingual",
        "public speaking",
        "doodling"
    ]
}
```
Here, instead of the entire property sets on the **user** entity, only the **aboutMe**, **displayName**, and **skills** basic properties are returned.

## Read specific properties of the resources in a collection
In addition to reading specific properties of a single resource, you can also apply the similar [$select](query-parameters.md) query parameter to a collection to get back all resources in the collection with just the specific properties returned on each.

For example, to query the name of the signed-in user's drive items, you can submit the following HTTPS GET request.

```no-highlight
GET https://graph.microsoft.com/v1.0/me/drive/root/children?$select=name HTTP/1.1
Authorization : Bearer {access_token}
```

The successful response returns a 200 OK status code and a payload that contains only the names of the shared files, as shown in the following example.

```no-highlight
{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('john.doe%40contoso.onmicrosoft.com')/drive/root/children(name,type)",
  "value": [
    {
      "@odata.etag": "\"{896A8E4D-27BF-424B-A0DA-F073AE6570E2},2\"",
      "name": "Shared with Everyone"
    },
    {
      "@odata.etag": "\"{B39D5D2E-E968-491A-B0EB-D5D0431CB423},1\"",
      "name": "Documents"
    },
    {
      "@odata.etag": "\"{9B51EA38-3EE6-4DC1-96A6-230E325EF054},2\"",
      "name": "newFile.txt"
    }
  ]
}
```

## Traverse from one resource to another via relationship
A manager holds a **directReports** relationship with the other users reporting to him or her.
To query the list of the direct reports of a user, you can use the following HTTPS GET request to navigate to the intended target via relationship traversal.

```no-highlight
GET https://graph.microsoft.com/v1.0/users/john.doe@contoso.onmicrosoft.com/directReports HTTP/1.1
Authorization : Bearer {access_token}
```

The successful response returns the 200 OK status and a payload, as shown.

```no-highlight
HTTP/1.1 200 OK
content-type: application/json;odata.metadata=minimal
content-length: 152

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#directoryObjects/$entity",
    "@odata.type": "#microsoft.graph.user",
    "id": "c37b074d-fe9d-4e68-83ad-b4401d3be174",
    "department": "Sales & Marketing",
    "displayName": "Bonnie Kearney",

    ...
}
```

Similarly, you can follow a relationship to navigate to related resources.
For example, the user-messages relationship enables traversal from an Azure Active Directory (Azure AD) User to a set of Outlook mail messages.
The following example shows how to do this in a REST API call.


```no-highlight
GET https://graph.microsoft.com/v1.0/me/messages HTTP/1.1
Authorization : Bearer {access_token}
```


The successful response returns the 200 OK status and a payload, as shown.


```no-highlight
HTTP/1.1 200 OK
content-type: application/json;odata.metadata=minimal
odata-version: 4.0
content-length: 147

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('john.doe%40contoso.onmicrosoft.com')/Messages",
  "@odata.nextLink": "https://graph.microsoft.com/v1.0/me/messages?$top=1&$skip=1",
  "value": [
    {
      "@odata.etag": "W/\"FwAAABYAAABMR67yw0CmT4x0kVgQUH/3AAJL+Kej\"",
      "id": "<id-value>",
      "createdDateTime": "2015-11-14T00:24:42Z",
      "lastModifiedDateTime": "2015-11-14T00:24:42Z",
      "changeKey": "FwAAABYAAABMR67yw0CmT4x0kVgQUH/3AAJL+Kej",
      "categories": [],
      "receivedDateTime": "2015-11-14T00:24:42Z",
      "sentDateTime": "2015-11-14T00:24:28Z",
      "hasAttachments": false,
      "subject": "Did you see last night's game?",
      "body": {
        "ContentType": "HTML",
        "Content": "<content>"
      },
      "BodyPreview": "it was great!",
      "Importance": "Normal",

       ...
    }
  ]
}
```
You can see all the relationships on a given resource by going to the metadata, finding the `EntityType`, and looking at each `NavigationProperty` for that `EntityType`.

## Call actions and functions
Microsoft Graph also supports _actions_ and _functions_ to manipulate resources in ways that are not simply create, read, update, and delete (CRUD) operations. They are often in the shape of HTTPS POST requests in order to intake arguments for the action or function. For example, the following action lets the signed-in user (`me`) send an email message.

```no-highlight
POST https://graph.microsoft.com/v1.0/me/sendMail HTTP/1.1
authorization: bearer {access_token}
content-type: application/json
content-length: 96

{
  "message": {
    "subject": "Meet for lunch?",
    "body": {
      "contentType": "Text",
      "content": "The new cafeteria is open."
    },
    "toRecipients": [
      {
        "emailAddress": {
          "address": "garthf@contoso.onmicrosoft.com"
        }
      }
    ],
    "attachments": [
      {
        "@odata.type": "microsoft.graph.fileAttachment",
        "name": "menu.txt",
        "contentBytes": "bWFjIGFuZCBjaGVlc2UgdG9kYXk="
      }
    ]
  },
  "saveToSentItems": "false"
}
```

You can see all the functions that are available in the metadata. They appear as Functions or Actions.

## Use the Microsoft Graph SDKs

Like the power and ease of SDKs? While you can always use REST APIs to call Microsoft Graph, we also provide SDKs for many popular platforms. To explore the SDKs that are available, see [Code samples and SDKs](https://developer.microsoft.com/graph/code-samples-and-sdks).

## See also

- [Use the Microsoft Graph API](use-the-api.md)
- [Get auth tokens](./auth/index.yml)