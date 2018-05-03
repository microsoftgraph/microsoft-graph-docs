# Add custom data to users using open extensions
We're going to walk you through an example to demonstrate how to use *open extensions*. 

Imagine you're building an application that is available on lots of different client platforms, such as desktop and mobile.  You want to let users 
configure their UI experience so it’s consistent no matter which device they use to sign in to your app. This is a common requirement for most apps. 

For this scenario, we're going to show you how to:

1. Add an open extension representing some roaming profile information about the user.
2. Query the user and return the roaming profile.
3. Change the user's roaming profile information (the open extension value).
4. Delete the user's roaming profile information.

>**Note:** This topic shows you how to add, read, update and delete open extensions on a *user* resource.  These methods are also supported for 
the *administrativeUnit*, *contact*, *device*, *event*, *group*, *group event*, *group post* and *organizaton* resource types.  
Simply update the example requests below using any of those resource types. The responses shown in the examples below may be truncated for brevity. 

## 1. Add roaming profile information
The user signs in to the app and configures the look and feel of the app.  These app settings should roam so that the user gets the same experience on 
whatever device they sign in to the app from.  Here we'll see how to add the roaming profile information to a user resource.

##### Request
```http
POST https://graph.microsoft.com/v1.0/me/extensions
Content-type: application/json
{
    "@odata.type":"microsoft.graph.openTypeExtension",
    "extensionName":"com.contoso.roamingSettings",
    "theme":"dark",
    "color":"purple",
    "lang":"Japanese"
}
```
##### Response
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-length: 420

{
    "@odata.type": "#microsoft.graph.openTypeExtension",
    "extensionName": "com.contoso.roamingSettings",
    "id": "com.contoso.roamingSettings",
    "theme": "dark",
    "color": "purple",
    "lang": "Japanese"
}
```

## 2. Retrieve roaming profile information
When the user signs in to the app from another device, the app can retrieve the user's profile details as well as their roaming settings. This can be done by getting the user's resource and expanding the extension navigation property.

##### Request
```http
GET https://graph.microsoft.com/v1.0/me?$select=id,displayName,mail,mobilePhone&$expand=extensions
```
##### Response
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-length: 420

{
    "id": "84b80893-8749-40a3-97b7-68513b600544",
    "displayName": "John Smith",
    "mail": "john@contoso.com",
    "mobilePhone": "1-555-6589",
    "extensions": [
        {
            "@odata.type": "#microsoft.graph.openTypeExtension",
            "extensionName": "com.contoso.roamingSettings",
            "id": "com.contoso.roamingSettings",
            "theme": "dark",
            "color": "purple",
            "lang": "Japanese"
        }
    ]
}
```
>**Note:** If you have multiple extensions, you can filter on the *id* to get the extension that you are interested in.

## 3. Change roaming profile information
The user may choose to change their roaming profile information.  This update can be done with a ```PATCH``` on the open extension value. 

##### Request
```http
PATCH https://graph.microsoft.com/v1.0/me/extensions/com.contoso.roamingSettings
Content-type: application/json
{
    "theme":"light",
    "color":"yellow",
    "lang":"Swahili"
}
```

##### Response
```
HTTP/1.1 204 No content
```

## 4. Delete a user's roaming profile
The user decides that they don't want a roaming profile anymore, so they delete it. This can be done with a ```DELETE``` request on the open extension value.

##### Request
```http
DELETE https://graph.microsoft.com/v1.0/me/extensions/com.contoso.roamingSettings
```

##### Response
```
HTTP/1.1 204 No content
```

## See also

- [Add custom data to resources using extensions](extensibility_overview.md)
- [Add custom data to groups using schema extensions](extensibility_schema_groups.md)
- [openTypeExtension resource type](../api-reference/v1.0/resources/opentypeextension.md)
- [Create open extension](../api-reference/v1.0/api/opentypeextension_post_opentypeextension.md)
- [Get open extension](../api-reference/v1.0/api/opentypeextension_get.md)
- [Update open extension](../api-reference/v1.0/api/opentypeextension_update.md)
- [Delete open extension](../api-reference/v1.0/api/opentypeextension_delete.md)