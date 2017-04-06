# Add custom data to resources using extensions

Microsoft Graph provides a single API endpoint that gives you access to rich people-centric data and insights through a number of resources like 
[user](../api-reference/beta/resources/user.md) and [message](../api-reference/beta/resources/message.md). There's now a way for you to _**extend**_ Microsoft Graph 
with your own application data. You can add custom properties to Microsoft Graph resources without requiring an external data store. 
For example, you might decide to keep your app lightweight and store app-specific user profile data in Microsoft Graph by extending the **user** resource. 
Alternatively, you might want to retain your app’s existing user profile store, and simply add an app-specific store identifier
to the **user** resource.

Microsoft Graph offers two types of extensions. Choose the extension type that best suits your application needs:

*  **Open extensions**: A good way for developers to get started.
*  **Schema extensions**: A more versatile mechanism for developers who care about storing typed data, making their schema discoverable and shareable, being able to filter, and in the future, being able to perform input data validation and authorization.

>**Important:** You should not use extensions to store sensitive personally identifiable information, such as account credentials, government identification numbers, cardholder data, financial account data, healthcare information, or sensitive background information.

## Supported Resources

The following table shows the current support for open and schema extensions and whether they are in general availability (GA /v1.0 and /beta) or only in preview (/beta). 

| Resource | Open extensions | Schema extensions |
|---------------|-------|-------|
| [Administrative unit](../api-reference/beta/resources/administrativeunit.md) | Preview only | Coming soon |
|  [calendar event](../api-reference/beta/resources/event.md) | GA | Preview only |
|  Group [calendar event](../api-reference/beta/resources/event.md) | GA | Preview only |
|  Group conversation thread [post](../api-reference/beta/resources/post.md) | GA | Preview only |
|  [device](../api-reference/beta/resources/device.md) | Preview only | Preview only |
|  [group](../api-reference/beta/resources/group.md) | Preview only | Preview only |
|  [message](../api-reference/beta/resources/message.md) | GA | Preview only |
|  [organization](../api-reference/beta/resources/organization.md) | Preview only | Coming soon |
|  [Personal contact](../api-reference/beta/resources/contact.md)| GA | Coming soon |
|  [user](../api-reference/beta/resources/user.md) | Preview only | Preview only |

## Open extensions
[Open extensions](../api-reference/beta/resources/opentypeextension.md) (formerly known as Office 365 data extensions) are 
[open types](http://www.odata.org/getting-started/advanced-tutorial/#openType) that offer a flexible way to 
add untyped app data directly to a resource instance. 

Open extensions, together with their custom data, are accessible through the **extensions** navigation property of the resource instance.
The **extensionName** property is the only _pre-defined_, writable property in an open extension. When creating an open extension, you must assign the **extensionName** property a name that is unique within the tenant. 
One way to do this is to use a reverse domain name system (DNS) format that is dependent on _your own domain_, for example, `Com.Contoso.ContactInfo`. 
Do not use the Microsoft domain (`Com.Microsoft` or `Com.OnMicrosoft`) in an extension name.

You can [create an open extension](../api-reference/beta/api/opentypeextension_post_opentypeextension.md) in a resource instance and store custom data to it all in the same operation 
(note [known limitation below](#known-limitations-for-extensions) for some of the supported resources).
You can subsequently [read](../api-reference/beta/api/opentypeextension_get.md), [update](../api-reference/beta/api/opentypeextension_update.md), or [delete](../api-reference/beta/api/opentypeextension_delete.md) 
the extension and its data. 

>**Note:** Open extensions have been generally available (GA) for events, group posts, messages, and personal contacts. They are now also available for administrative units, 
devices, groups, organizations, and users in preview.

Open extension example: [Add custom data to users using open extensions (preview)](extensibility_open_users.md)

## Schema extensions (preview)
[Schema extensions](../api-reference/beta/resources/schemaextension.md) allow you to define a schema you can use to extend a resource type. First, you create your schema extension definition.
Then, use it to extend resource instances with strongly-typed custom data. In addition, you can control the [status](#schema-extensions-lifecycle) of your schema extension and let it 
be discoverable by other apps. These apps can in turn use the extension for their data and build further experiences on top of it.

When creating a schema extension definition, you must provide a unique name for its **id**. There are two naming options:

- If you already have a vanity `.com` domain that you have verified with your tenant, you can use the domain name along with the schema name 
to define a unique name, in this format \{_&#65279;domainName_\}\_\{_&#65279;schemaName_\}. For example, if your vanity domain is contoso.com then you can define 
an **id** of, `contoso_mySchema`.  This is the preferred option.
- If you don’t have a verified vanity domain, you can just set the **id** to a schema name (without a domain name prefix), for example, `mySchema`. 
Microsoft Graph will assign a string ID for you based on the supplied name, in this format: ext\{_&#65279;8-random-alphanumeric-chars_\}\_\{_&#65279;schema-name_\}.  For example, `extkvbmkofy_mySchema`.

You will see this unique name in **id** used as the name of the complex type which will store your custom data on the extended resource instance. 


Unlike open extensions, managing schema extension definitions ([list](../api-reference/beta/api/schemaextension_list.md), [create](../api-reference/beta/api/schemaextension_post_schemaextensions.md), 
[get](../api-reference/beta/api/schemaextension_get.md), [update](../api-reference/beta/api/schemaextension_update.md), and [delete](../api-reference/beta/api/schemaextension_delete.md)) 
and their data (add, get, update, and delete data) are separate sets of API operations. 

Since schema extensions are accessible as complex types in instances of the targeted resources, you can 
do CRUD operations on the data in a schema extension in the following ways:

- Use the resource `POST` method to specify custom data when creating a new resource instance.
- Use the resource `GET` method to read the custom data.
- Use the resource `PATCH` method to add or update custom data in an existing resource instance.
- Use the resource `PATCH` method to set the complex type to null, to delete the custom data in the resource instance. 

Schema extension example: [Add custom data to groups using schema extensions (preview)](extensibility_schema_groups.md)


### Schema extensions lifecycle
When your app creates a schema extension definition, the app is marked as the owner of that schema extension. 

The owner app can move the extension through different states of a lifecycle, using a PATCH operation on its **status** property. 
Depending on the current state, the owner app may be able to update or delete the extension. Any updates to a schema extension should always only be additive and non-breaking.


| State | Lifecycle state behavior |
|-------------|------------|
| InDevelopment | - Initial state after creation. The owner app is still developing the schema extension. <br> - In this state, only the owner app can use the schema extension. The owner app can update the extension definition with additive changes or delete it. Only the owner app can extend resource instances with this schema definition and only in the same directory where the owner app is registered. <br> - The owner app can move the extension from `InDevelopment` to the `Available` state. |
| Available | - The schema extension is available for use by all apps in any tenant. <br> - Once the owner app sets the extension to `Available`, any app can simply add custom data to instances of those resource types specified in the extension (as long as the app has permissions to that resource). The app can assign custom data when creating a new instance, or updating an existing instance. Only the owner app can update the extension definition with additive changes, or delete the extension. <br> - The owner app can also move the schema extension from `Available` to the `Deprecated` state. |
| Deprecated | - The schema extension definition can no longer be read or modified. <br> - No app can view, update, add new properties, or delete the extension. Apps can, however, still read, update, or delete extension _property values_. <br> - The owner app can move the schema extension from `Deprecated` back to the `Available` state. |

>**Note:** You can continue to access or delete your custom data in a schema extension in the `Deprecated` state. There is, however, 
currently a [known issue](#known-limitations-for-extensions) where you lose access to your custom data once the schema extension is deleted.

### Supported property data types 
The following data types are supported when defining a property in a schema extension:

| Property Type | Remarks |
|-------------|------------|
| Binary | 256 bytes maximum. |
| Boolean | Not supported for messages, events and posts. |
| DateTime | Must be specified in ISO 8601 format. Will be stored in UTC. |
| Integer | 32-bit value. Not supported for messages, events and posts. |
| String | 256 characters maximum. |

>**Note:** Multi-value properties are not currently supported.

### Azure AD directory schema extensions
Azure AD supports a similar type of extensions, known as [directory schema extensions](https://msdn.microsoft.com/en-us/library/azure/ad/graph/howto/azure-ad-graph-api-directory-schema-extensions), 
on a few [directoryObject](../api-reference/beta/resources/directoryObject.md) resources. While you must use Azure AD Graph API to create and manage the definitions of directory schema extensions, you can use Microsoft Graph API
to add, get, update and delete _data_ in the properties of these extensions.

## Permissions
The same [permissions](../authorization/permission_scopes.md) that are required to read from or write to a specific resource are also required to read from or write to any extensions data on that resource.  For example, for an app to be able to update the signed-in user's profile with custom app data, the app must have been granted the *User.ReadWrite.All* permission.

Additionally, to create and manage schema extension definitions, an application must be granted the *Directory.AccessAsUser.All* permission.
 
## Known limitations for extensions
-   You cannot specify an open extension at the same time you create an instance of **administrativeUnit**, **device**, **group**, **organization** or **user**. You must first create the instance and then specify the open extension data in a subsequent ``POST`` request on that instance.  
-   Change tracking (delta query) is not supported for open or schema extension properties.
-   Filtering on schema extension property values is not yet supported (but will be available very soon).
-   Deleting a schema extension definition will remove access to any custom data added based on the deleted schema. This is a temporary limitation.
-   Currently deleting a schema extension is possible in all states. In the future deletion will be possible only for schema extensions in the `InDevelopment` state.
-   To remove a schema extension complex type from a resource instance, you must set all the complex type's property values to `null`.  In the future this will be possible by simply setting the schema extension complex type to `null`.
-   Directory resources, such as users, groups and devices, currently limit the total number of schema extension property values that can be set on a resource, to 100.

## Extension examples
[Add custom data to users using open extensions (preview)](extensibility_open_users.md)

[Add custom data to groups using schema extensions (preview)](extensibility_schema_groups.md)

## See also

[Office 365 domains](https://technet.microsoft.com/en-us/library/office-365-domains.aspx)

[Adding and verifying a domain for an Office 365 tenant](http://office365support.ca/adding-and-verifying-a-domain-for-the-new-office-365/)
