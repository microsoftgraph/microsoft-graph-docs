# Add custom data to resources using extensions

Microsoft Graph provides a single API endpoint that gives you access to rich people-centric data and insights through a number of resources such as [user](../api-reference/v1.0/resources/user.md) and [message](../api-reference/v1.0/resources/message.md). There's now a way for you to _**extend**_ Microsoft Graph with your own application data. You can add custom properties to Microsoft Graph resources without requiring an external data store. 

For example, you might decide to keep your app lightweight and store app-specific user profile data in Microsoft Graph by extending the **user** resource. Alternatively, you might want to retain your app’s existing user profile store, and simply add an app-specific store identifier to the **user** resource.

Microsoft Graph offers two types of extensions. Choose the extension type that best suits your application needs:

- **Open extensions**: A good way for developers to get started.
- **Schema extensions**: A more versatile mechanism for developers who care about storing typed data, making their schema discoverable and shareable, being able to filter, and in the future, being able to perform input data validation and authorization.

> **Important:** You should not use extensions to store sensitive personally identifiable information, such as account credentials, government identification numbers, cardholder data, financial account data, healthcare information, or sensitive background information.

## Supported resources

The following table lists the resources that support open and schema extensions, and indicates whether they have reached general availability (GA - available in both the v1.0 and beta endpoints) or are in preview (available only in the beta endpoint).  

|Resource |Open extensions |Schema extensions |
|:------- |:------ |:------ |
| [Administrative unit](../api-reference/beta/resources/administrativeunit.md) | Preview only | Preview only |
| [Calendar event](../api-reference/v1.0/resources/event.md) | GA | GA |
| [Device](../api-reference/v1.0/resources/device.md) | GA | GA |
| [Group](../api-reference/v1.0/resources/group.md) | GA | GA |
| [Group calendar event](../api-reference/v1.0/resources/event.md) | GA | GA |
| [Group conversation post](../api-reference/v1.0/resources/post.md) | GA | GA |
| [Message](../api-reference/v1.0/resources/message.md) | GA | GA |
| [Organization](../api-reference/v1.0/resources/organization.md) | GA | GA |
| [Personal contact](../api-reference/v1.0/resources/contact.md)| GA | GA |
| [User](../api-reference/v1.0/resources/user.md) | GA | GA |

You can use extensions on all these resources when signed-in with a work or school account. In addition, you can use extensions on these resources—**event**, **post**, **group**, **message**, **contact**, and **user**—when signed in with a personal account. 

## Open extensions

[Open extensions](../api-reference/v1.0/resources/opentypeextension.md) (formerly known as Office 365 data extensions) are 
[open types](http://www.odata.org/getting-started/advanced-tutorial/#openType) that offer a flexible way to 
add untyped app data directly to a resource instance. 

Open extensions, together with their custom data, are accessible through the **extensions** navigation property of the resource instance.
The **extensionName** property is the only _pre-defined_, writable property in an open extension. When creating an open extension, you must assign the **extensionName** property a name that is unique within the tenant. 

One way to do this is to use a reverse domain name system (DNS) format that is dependent on _your own domain_, for example, `Com.Contoso.ContactInfo`. 

Do not use the Microsoft domain (`Com.Microsoft` or `Com.OnMicrosoft`) in an extension name.

You can [create an open extension](../api-reference/v1.0/api/opentypeextension_post_opentypeextension.md) in a resource instance and store custom data to it all in the same operation (note [known limitation](known_issues.md#extensions) for some of the supported resources).

You can subsequently [read](../api-reference/v1.0/api/opentypeextension_get.md), [update](../api-reference/v1.0/api/opentypeextension_update.md), or [delete](../api-reference/v1.0/api/opentypeextension_delete.md) 
the extension and its data.

Open extension example: [Add custom data to users using open extensions](extensibility_open_users.md)

## Schema extensions

[Schema extensions](../api-reference/v1.0/resources/schemaextension.md) allow you to define a schema that you can use to extend a resource type. First, you create your schema extension definition. Then, use it to extend resource instances with strongly-typed custom data. In addition, you can control the [status](#schema-extensions-lifecycle) of your schema extension and let it 
be discoverable by other apps. These apps can in turn use the extension for their data and build further experiences on top of it.

When creating a schema extension definition, you must provide a unique name for its **id**. There are two naming options:

- If you already have a vanity `.com`,`.net`, `.gov`, `.edu` or a `.org` domain that you have verified with your tenant, you can use the domain name along with the schema name to define a unique name, in this format \{_&#65279;domainName_\}\_\{_&#65279;schemaName_\}. For example, if your vanity domain is contoso.com, you can define an **id** of, `contoso_mySchema`. This is the preferred option.
- If you don’t have a verified vanity domain, you can just set the **id** to a schema name (without a domain name prefix), for example, `mySchema`. Microsoft Graph will assign a string ID for you based on the supplied name, in this format: ext\{_&#65279;8-random-alphanumeric-chars_\}\_\{_&#65279;schema-name_\}.  For example, `extkvbmkofy_mySchema`.

You will see this unique name in **id** used as the name of the complex type that will store your custom data on the extended resource instance.

Unlike open extensions, managing schema extension definitions ([list](../api-reference/v1.0/api/schemaextension_list.md), [create](../api-reference/v1.0/api/schemaextension_post_schemaextensions.md), [get](../api-reference/v1.0/api/schemaextension_get.md), [update](../api-reference/v1.0/api/schemaextension_update.md), and [delete](../api-reference/v1.0/api/schemaextension_delete.md)) 
and managing their data (add, get, update, and delete data) are separate sets of API operations. 

Because schema extensions are accessible as complex types in instances of the targeted resources, you can do CRUD operations on the custom data in a schema extension in the following ways:

- Use the resource `POST` method to specify custom data when creating a new resource instance. Note that there is a [known issue](known_issues.md#creating-a-resource-instance-and-adding-schema-extension-data-at-the-same-time) on the **contact**, **event**, **message**, and **post** resources that requires creating a schema extension using a `PATCH` operation.
- Use the resource `GET` method to read the custom data.
- Use the resource `PATCH` method to add or update custom data in an existing resource instance.
- Use the resource `PATCH` method to set the complex type to null, to delete the custom data in the resource instance. 

Schema extension example: [Add custom data to groups using schema extensions](extensibility_schema_groups.md)


### Schema extensions lifecycle

When your app creates a schema extension definition, the app is marked as the owner of that schema extension. 

The owner app can move the extension through different states of a lifecycle, using a PATCH operation on its **status** property. 
Depending on the current state, the owner app may be able to update or delete the extension. Any updates to a schema extension should always only be additive and non-breaking.


|State |Lifecycle state behavior |
|:-------------|:------------|
| InDevelopment | <ul><li>Initial state after creation. The owner app is still developing the schema extension. </li><li>In this state, any app in the same directory where the owner app is registered can extend resource instances with this schema definition (as long as the app has permissions to that resource). </li><li>Only the owner app can update the extension definition with additive changes or delete it. </li><li>The owner app can move the extension from **InDevelopment** to the **Available** state.</li></ul> |
| Available | <ul><li>The schema extension is available for use by all apps in any tenant. </li><li>After the owner app sets the extension to **Available**, any app can simply add custom data to instances of those resource types specified in the extension (as long as the app has permissions to that resource). The app can assign custom data when creating a new instance or updating an existing instance. </li><li>Only the owner app can update the extension definition with additive changes. No app can delete the extension definition in this state. </li><li>The owner app can move the schema extension from **Available** to the **Deprecated** state.</li></ul> |
| Deprecated | <ul><li>The schema extension definition can no longer be read or modified. </li><li>No app can view, update, add new properties, or delete the extension. </li><li>Apps can, however, still read, update, or delete existing extension _property values_. </li><li>The owner app can move the schema extension from **Deprecated** back to the **Available** state.</li></ul> |

### Supported property data types

The following data types are supported when defining a property in a schema extension:

| Property Type | Remarks |
|:-------------|:------------|
| Binary | 256 bytes maximum. |
| Boolean | Not supported for messages, events and posts. |
| DateTime | Must be specified in ISO 8601 format. Will be stored in UTC. |
| Integer | 32-bit value. Not supported for messages, events and posts. |
| String | 256 characters maximum. |

> **Note:** Multi-value properties are not supported.

### Azure AD directory schema extensions

Azure AD supports a similar type of extension, known as [directory schema extensions](https://msdn.microsoft.com/en-us/library/azure/ad/graph/howto/azure-ad-graph-api-directory-schema-extensions), on a few [directoryObject](../api-reference/v1.0/resources/directoryObject.md) resources. Although you have to use the [Azure AD Graph API](https://msdn.microsoft.com/library/azure/ad/graph/api/api-catalog) to create and manage the definitions of directory schema extensions, you can use the Microsoft Graph API to add, get, update and delete _data_ in the properties of these extensions.

## Permissions

The same [permissions](./permissions_reference.md) that are required to read from or write to a specific resource are also required to read from or write to any extensions data on that resource. For example, for an app to be able to update the signed-in user's profile with custom app data, the app must have been granted the *User.ReadWrite.All* permission.

Additionally, to create and manage schema extension definitions, an application must be granted the *Directory.AccessAsUser.All* permission.

## Data limits

### Open extension limits
The following limits apply to directory resources (such as **user**, **group**, **device**):

- Each open extension can have up to 2 KB of data (including the extension definition itself).
- An application can add up to two open extensions per resource instance.

### Schema extension limits
An application may create no more than five **schema extension** definitions.

## Known limitations

For known limitations using extensions, see the [extensions section](known_issues.md#extensions) in the known issues article.

## Extension examples

- [Add custom data to users using open extensions](extensibility_open_users.md)

- [Add custom data to groups using schema extensions](extensibility_schema_groups.md)

## See also

- [Office 365 domains](https://technet.microsoft.com/en-us/library/office-365-domains.aspx)

- [Adding and verifying a domain for an Office 365 tenant](http://office365support.ca/adding-and-verifying-a-domain-for-the-new-office-365/)
