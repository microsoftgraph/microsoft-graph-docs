# Add custom data to groups using schema extensions (preview)

We're going to walk you through an example to demonstrate how to use *schema extensions*. 

Imagine you're a developer in a Learning Management Software company called “Graph Learn” that builds training courses and materials for businesses.  Office 365 groups, with their rich collaborative experiences, is a fantastic way to deliver course content and record exercises among participants for both online courses and instructor led courses.  You may want to make the Office 365 groups used for training courses easily identifiable as training courses, which will allow other developers to discover your groups and build rich experiences on top of your learning courses.

For this scenario, we're going to show you how to:

1. View available schema extension definitions that you could use
2. Register a schema extension definition that targets groups for training courses
3. Create a new group with extended data based on the schema extension definition that you just registered
4. Add or update custom data to an existing group based on a schema extension definition
5. Read back a group and the extension data

>**Note:** This topic shows you how to create and read schema extension values on a **group** resource (steps 3-5).  The same methods are supported for the **device**, **event**, **message**, **post**, and **user** 
resource types as well.  So you can carry out similar operations as the example requests below on any of those resources.

## 1. View available schema extensions
First, as a developer, you might want to find any other schema extension definitions that our app could reuse.  This can be done by querying the **schemaExtension** resource.  
In the example below, you're going to query for a specific schema extension by **id**.

Notice that the extension returned in the response has **Available** as the **status** value, which indicates that any app which has permission to the resources in the **targetTypes** property can use and update the extension
with additive changes. In general, this operation returns any schema extensions that satisfy the specified filter regardless of **status**, so do check the extension status before using it.


##### Request
```http
GET https://graph.microsoft.com/beta/schemaExtensions/$filter=id eq 'graphlearn_test'
```
##### Response
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
for the schema extension (`courses`), and assign **id** with the resultant string, `graphlearn_courses`.  Also, specify a description (to enable discoverability), target types 
(defining which resources this extension applies to), and the custom properties that make up the schema.  In this example, 
specify the `courseId`, `courseName` and `courseType` custom properties and their types.

See an [example of the other way to assign **id** in the request](../api-reference/beta/api/schemaextension_post_schemaextensions.md#request-2), that requires you to provide only a schema name.

Notice that when you initially create a schema extension, its status is **InDevelopment**. While you're developing the extension, you can keep it in this status, 
during which only your app that created it can update it with additive changes or delete it. When you are ready to share the extension for use by other apps, set **status** to **Available**.

##### Request
```http
POST https://graph.microsoft.com/beta/schemaExtensions
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
##### Response
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-length: 420
{
    "id": "graphlearn_course",
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
Create a new group that is extended with extra data using the `graphlearn_courses` schema extension definition that we just registered.  This is a standard ```POST``` 
to the **group** resource, with the additional `graphlearn_courses` complex type extension defined in the request body.  The response will not mirror back any data extensions. 
We need to explicitly ```$select``` the extension by name using a ```GET``` operation.

##### Request
```http
POST https://graph.microsoft.com/beta/groups
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
##### Response
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

## 4. Add or update custom data to an existing group
Similar to the last example, we can extend an existing group resource with the additional `graphlearn_courses` complex type extension defined in the body of a ```PATCH``` request.  

##### Request
```http
PATCH https://graph.microsoft.com/beta/groups/dfc8016f-db97-4c47-a582-49cb8f849355
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
##### Response
```http
HTTP/1.1 204 No Content
```

If you want to update the values of the extension data, put the entire extension complex type in the body of a ```PATCH``` request (similar to adding custom data to an existing resource).

## 5. Get a group and its extension data
To get the group **and** its extension data, we need to use `$select` to specify the extension by name, in this case by `graphlearn_courses`.

#### Request
```http
GET https://graph.microsoft.com/beta/groups/dfc8016f-db97-4c47-a582-49cb8f849355?$select=displayName,id,description,graphlearn_courses
```

##### Response
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-length: 326
{
	"displayName": "New Managers March 2017",
	"description": "New Managers training course for March 2017",
	"graphlearn_courses": {
        "@odata.type": "#microsoft.graph.ComplexExtensionValue",
	    "courseId":"123",
	    "courseName":"New Managers",
	    "courseType":"Online"
    }
}
```

## See also

- [Add custom data to resources using extensions](extensibility_overview.md)
- [Add custom data to users using open extensions (preview)](extensibility_open_users.md)
- [Office 365 domains](https://technet.microsoft.com/en-us/library/office-365-domains.aspx)
- [Adding and Verifying a Domain for the NEW Office 365](http://office365support.ca/adding-and-verifying-a-domain-for-the-new-office-365/)
- [schemaExtension resource type](../api-reference/beta/resources/schemaextension.md)
- [List schemaExtensions](../api-reference/beta/api/schemaextension_list.md)
- [Create schemaExtension](../api-reference/beta/api/schemaextension_post_schemaextensions.md)
- [Get schemaExtension](../api-reference/beta/api/schemaextension_get.md)
- [Update schemaExtension](../api-reference/beta/api/schemaextension_update.md)
- [Delete schemaExtension](../api-reference/beta/api/schemaextension_delete.md))
