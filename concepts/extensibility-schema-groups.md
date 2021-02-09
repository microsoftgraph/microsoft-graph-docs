---
title: "Add custom data to groups using schema extensions "
description: "This article walks you through an example to demonstrate how to use *schema extensions*. "
author: "dkershaw10"
localization_priority: Priority
ms.custom: graphiamtop20
---

# Add custom data to groups using schema extensions 

This article walks you through an example to demonstrate how to use *schema extensions*. 

Imagine you're a developer in a Learning Management Software company called “Graph Learn” that builds training courses and materials for businesses.  Microsoft 365 groups, with their rich collaborative experiences, 
is a fantastic way to deliver course content and record exercises among participants for both online courses and instructor-led courses.  You might want to make 
those Microsoft 365 groups used for training courses easily identifiable as training courses, which will allow other developers to discover your groups and build rich experiences on top of your learning courses.

For this scenario, this article will show you how to:

1. View available schema extension definitions that you could use.
2. Register a schema extension definition that targets groups for training courses.
3. Create a new group with extended data based on the schema extension definition that you just registered.
4. Add, update, or remove custom data in an existing group based on a schema extension definition.
5. Read back a group and the extension data.

>**Note:** This topic shows you how to create and read schema extension values on a **group** resource (steps 3-5).  The same methods are supported for the 
**administrativeUnit**, **device**, **event**, **message**, **organization**, **post**, and **user** 
resource types as well.  You can carry out operations similar to the request examples in this article on any of those resources. Note that **administrativeUnit** is 
available only in the beta endpoint.

## 1. View available schema extensions
First, as a developer, you might want to find any other schema extension definitions that our app could reuse.  This can be done by querying the **schemaExtension** resource.  
In the example below, you're going to query for a specific schema extension by **id**.

Notice that the extension returned in the response has **Available** as the **status** value, which indicates that any app which has permission to the resources in the **targetTypes** property can use and update the extension
with additive changes. In general, this operation returns any schema extensions that satisfy the specified filter regardless of **status**, so do check the extension status before using it.


### Request
```http
GET https://graph.microsoft.com/v1.0/schemaExtensions?$filter=id eq 'graphlearn_test'
```
### Response
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-length: 420
{
    "value": [
        {
            "id":"graphlearn_test",
            "description": "Yet another test schema",
            "targetTypes": [
                "User", "Group"
            ],
            "status": "Available",
            "owner": "24d3b144-21ae-4080-943f-7067b395b913",
            "properties": [
                {
                    "name": "testName",
                    "type": "String"
                }
            ]
        }
    ]
}
```
## 2. Register a schema extension definition that describes a training course
If you can't find a schema extension that *is* appropriate for your needs, you can create and register a new extension definition for training courses on the **group** resource.  

When creating a schema extension definition, you should provide a string for the **id** property. There are two ways to do this. The following example shows the preferred
way, which uses a vanity domain name (`graphlearn.com`) that has been verified with your tenant. Concatenate the verified domain name (`graphlearn`) with a name 
for the schema extension (`courses`), and assign **id** with the resultant string, `graphlearn_courses`.  

Then, specify a description (to enable discoverability), target types 
(defining which resources this extension applies to), and the custom properties that make up the schema.  In this example, 
specify the `courseId`, `courseName` and `courseType` custom properties and their types.

See an [example of the other way to assign **id** in the request](/graph/api/schemaextension-post-schemaextensions?view=graph-rest-1.0#request-2), that requires you to provide only a schema name.

Notice that when you initially create a schema extension, its status is **InDevelopment**. While you're developing the extension, you can keep it in this status, 
during which only your app that created it can update it with additive changes or delete it. When you are ready to share the extension for use by other apps, set **status** to **Available**.

### Request
```http
POST https://graph.microsoft.com/v1.0/schemaExtensions
Content-type: application/json
{
    "id":"graphlearn_courses",
    "description": "Graph Learn training courses extensions",
    "targetTypes": [
        "Group"
    ],
    "properties": [
        {
            "name": "courseId",
            "type": "Integer"
        },
        {
            "name": "courseName",
            "type": "String"
        },
        {
            "name": "courseType",
            "type": "String"
        }
    ]
}
```
### Response
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-length: 420
{
    "id": "graphlearn_courses",
    "description": "Graph Learn training courses extensions",
    "targetTypes": [
        "Group"
    ],
    "status": "InDevelopment",
    "owner": "24d3b144-21ae-4080-943f-7067b395b913",
    "properties": [
        {
            "name": "courseId",
            "type": "Integer"
        },
        {
            "name": "courseName",
            "type": "String"
        },
        {
            "name": "courseType",
            "type": "String"
        }
    ]
}
```

## 3. Create a new group with extended data 
Create a _new_ group and extend it with extra data using the `graphlearn_courses` schema extension definition that we just registered.  This is a standard ```POST``` 
to the **group** resource, with the additional `graphlearn_courses` complex type extension defined in the request body.  The response will not mirror back any data extensions. 
We need to explicitly ```$select``` the extension by name using a ```GET``` operation.

### Request
```http
POST https://graph.microsoft.com/v1.0/groups
Content-type: application/json
{
	"displayName": "New Managers March 2017",
	"description": "New Managers training course for March 2017",
	"groupTypes": ["Unified"],
	"mailEnabled": true,
	"mailNickname": "newMan201703",
	"securityEnabled": false,
	"graphlearn_courses": {
	    "courseId":"123",
	    "courseName":"New Managers",
	    "courseType":"Online"
    }
}
```
### Response
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-length: 420
{
    "id": "dfc8016f-db97-4c47-a582-49cb8f849355",
    "createdDateTime": "2017-02-09T00:17:05Z",
    "description": "New Managers training course for March 2017",
    "displayName": "New Managers March 2017",
    "groupTypes": [
        "Unified"
    ],
    "mail": "newMan201703@graphlearn.com",
    "mailEnabled": true,
    "mailNickname": "newMan201703",
    "securityEnabled": false,
    "theme": null,
    "visibility": "Public"
}
```

## 4. Add, update, or remove custom data in an existing group
You can extend and add custom data to an _existing_ group instance with the additional `graphlearn_courses` complex type extension defined in the body of a ```PATCH``` request.  

### Request
```http
PATCH https://graph.microsoft.com/v1.0/groups/dfc8016f-db97-4c47-a582-49cb8f849355
Content-type: application/json
Content-length: 230
{
    "graphlearn_courses":{
	    "courseId":"123",
	    "courseName":"New Managers",
	    "courseType":"Online"
    }   
}
```
### Response
```http
HTTP/1.1 204 No Content
```

If you want to update the values of the extension data, put the entire extension complex type in the body of a ```PATCH``` request (similar to adding custom data to an existing resource).

You can also remove custom data added to a resource instance by setting the corresponding extension property to null. 

To remove a schema extension from a resource instance, set the extension complex type in that instance to null.


## 5. Get a group and its extension data
A handy way to look for a group (or groups) is to use `$filter` to match for specific extension property values,
such as an extension name or ID. 

Then, to get the custom data in a group, use `$select` to include the extension by name (in this case by `graphlearn_courses`).

The following example looks for the group that has the `graphlearn_courses` extension with a `courseId` property value matching `123`, and gets the 
group properties **displayName**, **id**, and **description**, and the custom data in the `graphlearn_courses` extension. (In the actual query, make sure you apply URL encoding as necessary.)

### Request

```http
GET https://graph.microsoft.com/v1.0/groups?$filter=graphlearn_courses/courseId eq ‘123’&$select=displayName,id,description,graphlearn_courses
```


### Response
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-length: 326
{
  "value": [
    {
	  "displayName": "New Managers March 2017",
      "id": "14429ae5-3e74-41a2-9fa8-028fbb984637",
	  "description": "New Managers training course for March 2017",
	  "graphlearn_courses": {
        "@odata.type": "#microsoft.graph.ComplexExtensionValue",
	    "courseId":"123",
	    "courseName":"New Managers",
	    "courseType":"Online"
      }
    }
  ]
}
```

## See also

- [Add custom data to resources using extensions](extensibility-overview.md)
- [Add custom data to users using open extensions (preview)](extensibility-open-users.md)
- [Microsoft 365 domains](/office365/servicedescriptions/office-365-platform-service-description/domains)
- [Adding and Verifying a Domain for the NEW Microsoft 365](https://office365support.ca/adding-and-verifying-a-domain-for-the-new-office-365/)
- [schemaExtension resource type](/graph/api/resources/schemaextension?view=graph-rest-1.0)
- [List schemaExtensions](/graph/api/schemaextension-list?view=graph-rest-1.0)
- [Create schemaExtension](/graph/api/schemaextension-post-schemaextensions?view=graph-rest-1.0)
- [Get schemaExtension](/graph/api/schemaextension-get?view=graph-rest-1.0)
- [Update schemaExtension](/graph/api/schemaextension-update?view=graph-rest-1.0)
- [Delete schemaExtension](/graph/api/schemaextension-delete?view=graph-rest-1.0)