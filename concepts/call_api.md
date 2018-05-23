# Calling the Microsoft Graph API

To access and manipulate a Microsoft Graph resource, you call and specify the resource URLs using one of the following operations:   

- GET
- POST
- PATCH
- PUT
- DELETE 

All Microsoft Graph API requests use the following basic URL pattern:

```
	https://graph.microsoft.com/{version}/{resource}?[query_parameters]
```

For this URL:

- `https://graph.microsoft.com` is the Microsoft Graph API endpoint.
- `{version}` is the target service version, for example, `v1.0` or `beta`.
- `{resource}` is resource segment or path, such as:
  - `users`, `groups`, `devices`, `organization`
  - The alias `me`, which resolves to the signed-in user
   - The resources belonging to a user, such as `me/events`, `me/drive` or `me/messages`
  - The alias `myOrganization`, which resolves to the tenant of the organization signed-in user
- `[query_parameters]` represents additional query parameters such as `$filter` and `$select`.

Optionally, you can also specify the tenant as part of your request.
When using `me`, do not specify the tenant.
For a list of common requests, see [Overview of Microsoft Graph](overview.md).

## Microsoft Graph API metadata
The metadata document ($metadata) is published at the service root.
For example, you can view the service document for the v1.0 and beta versions via the following URLs.

Microsoft Graph API `v1.0` metadata.
```
	https://graph.microsoft.com/v1.0/$metadata
```
Microsoft Graph API `beta` metadata.
```
	https://graph.microsoft.com/beta/$metadata
```

The metadata allows you to see and understand the data model of the Microsoft Graph, including the entity types and sets, complex types, and enums that make up the request and response packets sent to and from Microsoft Graph.
You can use the metadata to understand the realtionships between entities in Microsoft Graph and establish URLs that navigate between entities.
This navigation-based interconnectedness gives Microsoft Graph its unique character.

Path URL resource names, query parameters, and action parameters and values are case insensitive. 
However, values you assign, entity IDs, and other base64-encoded values are case sensitive.

The following sections show a few basic programming pattern calls to the Microsoft Graph API.

## Navigate from a set to a member

To view the information about a user, you get the `User` entity from the `users` collection to the specific user identified by its identifier, using an HTTPS GET request.
For a `User` entity, either the `id` or `userPrincipalName` property can be used as the identifier.
The following example request uses the `userPrincipalName` value as the user's id. 

```no-highlight 
GET https://graph.microsoft.com/v1.0/users/john.doe@contoso.onmicrosoft.com HTTP/1.1
Authorization : Bearer <access_token>
```

If successful, you should get a 200 OK response containing the user resource representation in the payload, as shown as follows:

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


## Project from an entity to properties
To retrieve only the user's biographical data, such as the user's provided _About me_ description and their skill set, you can add the _select_ query parameter to the previous request.
For example:

```no-highlight 
GET https://graph.microsoft.com/v1.0/users/john.doe@contoso.onmicrosoft.com?$select=displayName,aboutMe,skills HTTP/1.1
Authorization : Bearer <access_token>
```

The successful response returns the 200 OK status and a payload of the following format:

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

Here, instead of the entire property sets on the `user` entity, only the `aboutMe`, `displayName`, and `skills` properties are returned.

## Traverse to another resource via relationship
A manager holds a `directReports` relationship with the other users reporting to him or her.
To query the list of the direct reports of a user, you can use the following HTTPS GET request to navigate to the intended target via relationship traversal. 

```no-highlight 
GET https://graph.microsoft.com/v1.0/users/john.doe@contoso.onmicrosoft.com/directReports HTTP/1.1
Authorization : Bearer <access_token>
```

The successful response returns the 200 OK status and a payload of the following format:

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
For example, the `user => messages` relationship enables traversal from an Azure AD User to a set of Outlook mail messages.
The following example shows how to do this in a REST API call:


```no-highlight 
GET https://graph.microsoft.com/v1.0/me/messages HTTP/1.1
Authorization : Bearer <access_token>
```

    
The successful response returns the 200 OK status and a payload of the following format:


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

## Project from entities to properties
In addition to projection from a single entity to its properties, you can also apply the similar `select` query option to an entity collection to project them to a collection of some of their properties.
For example, to query the name of the signed-in user's drive items, you can submit the following HTTPS GET request:

```no-highlight 
GET https://graph.microsoft.com/v1.0/me/drive/root/children?$select=name HTTP/1.1
Authorization : Bearer <access_token>
```

The successful response returns a 200 OK status code and a payload containing the names and types of the shared files, as shown in the following example:

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

## Query a subset of users with the filtering query option
To find the employees of a specific job title within an organization, you can navigate from the users collection and then specify a _filter_ query option.
An example is shown as follows:

    
```no-highlight 
GET https://graph.microsoft.com/v1.0/users/?$filter=jobTitle+eq+%27Helper%27 HTTP/1.1
Authorization : Bearer <access_token>
```

The successful response returns the 200 OK status code and a list of users with the specified job title (`'Helper'`), as shown in the following example:

```no-highlight 
HTTP/1.1 200 OK
content-type: application/json;odata.metadata=minimal;odata.streaming=true;IEEE754Compatible=false;charset=utf-8
odata-version: 4.0
content-length: 986

{
    "@odata.context": "https://graph.microsoft.com/v1.0/contoso.onmicrosoft.com/$metadata#users",
    "value": [
        {
            "id": "c95e3b3a-c33b-48da-a6e9-eb101e8a4205",
            "city": "Redmond",
            "country": "USA",
            "department": "Help Center",
            "displayName": "Jane Doe",
            "givenName": "Jane",
            "jobTitle": "Helper",
            ......
            "mailNickname": "Jane",
            "mobile": null,
            "otherMails": [
                "jane.doe@contoso.onmicrosoft.com"
            ],
            ......
            "surname": "Doe",
            "usageLocation": "US",
            "userPrincipalName": "help@contoso.onmicrosoft.com",
            "userType": "Member"
        },
        
        ...
    ]
}
```

## Call actions or functions
Microsoft Graph also supports _actions_ and _functions_ to manipulate resources in ways that are not a simple fit with standard HTTP methods. 
For example, the following HTTPS POST request lets the signed-in user (`me`) send an email message:
```no-highlight 
POST https://graph.microsoft.com/v1.0/me/sendMail HTTP/1.1
authorization: bearer <access_token>
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
          "address": "garthf@a830edad9050849NDA1.onmicrosoft.com"
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

The request payload contains the input to the `sendMail` action, which is also defined in the $metadata.

## Use Microsoft Graph client libraries
Like the power and ease of SDKs? While you can always call Microsoft Graph using the REST API, we also provide SDKs for many popular platforms.

Explore our [SDKs](https://graph.microsoft.io/en-us/code-samples-and-sdks).