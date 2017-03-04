# Add custom data to resources

Microsoft Graph provides a single API endpoint that gives you access to rich people-centric data and insights. While we’re constantly growing these data sets by adding new Microsoft cloud services, there's now a way for you to **extend** Microsoft Graph with your own custom application data. You can add custom properties to Microsoft Graph resources without requiring an external data store. For example, you might decide to keep your app lightweight and store app specific user profile data in Microsoft Graph by extending the user object. Alternatively, you might want to retain your app’s existing user profile store and link its records to users in Microsoft Graph by adding an app specific identifier to the user resource.

Microsoft Graph offers two types of extensions. Choose the extension type that best suits your application needs:

*  **Open extensions**: A good way for developers to get started with extending resources with custom data.
*  **Schema extensions**: A more versatile mechanism for developers who care about storing typed data, making their schema discoverable and shareable, being able to filter, and in the future being able to perform input data validation and authorization.

>**Important:** You should not use this feature to store sensitive personally identifiable information, such as account credentials, government identification numbers, cardholder data, financial account data, healthcare information, or sensitive background information.

## Supported Resources

The following table shows the current support for open and schema extensions and whether they are in generally availability (GA /v1.0) or in preview (/beta). 

| | Open extensions | Schema extensions |
|---------------|-------|-------|
| [administrative unit](../api-reference/beta/resources/administrativeunit.md) | Preview only | Coming soon |
|  [calendar event](../api-reference/beta/resources/event.md) | GA | Preview only |
|  Group [calendar event](../api-reference/beta/resources/event.md) | GA | Preview only |
|  Group conversation thread [post](../api-reference/beta/resources/post.md) | GA | Preview only |
|  [device](../api-reference/beta/resources/device.md) | Preview only | Preview only |
|  [group](../api-reference/beta/resources/group.md) | Preview only | Preview only |
|  [message](../api-reference/beta/resources/message.md) | GA | Preview only |
|  [organization](../api-reference/beta/resources/organization.md) | Preview only | Coming soon |
|  [personal contact](../api-reference/beta/resources/contact.md)| Preview only | Coming soon |
|  [user](../api-reference/beta/resources/user.md) | Preview only | Preview only |

## Open extensions
Open extensions gives you an easy way to directly add untyped properties to a resource in the Microsoft Graph. Any open extension added to a resource shows up in the **extensions** navigation property, which is derived from the [extension](../api-reference/beta/resources/extension.md) abstract type.  Each extension has an additional **extensionName** property which is the only pre-defined, writable property for all extensions, along with your custom data. One way to help make sure extension names are unique is to use a reverse domain name system (DNS) format that is dependent on _your own domain_, for example, `Com.Contoso.ContactInfo`. Do not use the Microsoft domain (`Com.Microsoft` or `Com.OnMicrosoft`) in an extension name.

>**Note:** Open extensions for administrative units, devices, groups, organization and users are only available in preview.

Open extension example: [Add custom data to Users using Open Extensions (preview)](extensibility_open_users.md)

## Schema extensions (preview)
With schema extensions, you can define the schema that you want to extend a resource class with (also known an entity-type). Schema extension definitions let you add strongly-typed custom data to a resource. This schema definition must be given a unique name based on one of your directory's verified domain names along with your extension name, for example `contoso_mySchema`. The custom data appears as a complex type (named with the unique `id` of the schema definition that it's created from) on the extended resource. Even better, your schema is also discoverable for other app developers to find and use, and to build further experiences on top of.

Schema extension example: [Add custom data to Groups using Schema Extensions (preview)](extensibility_schema_groups.md)

### Schema extensions lifecycle
When your app creates a schema extension definition, it is marked as the owner of that schema extension. Only this app can update and delete the schema extension definition. The schema extension may be updated with non-breaking changes only. The schema extension can be in various lifecycle states. You can change the lifecycle state through a PATCH operation.

| State | Lifecycle state behavior |
|-------------|------------|
| InDevelopment | Initial state after creation.  In this state, only the owning app can use the schema extension to add data to the targeted resource. The schema extension can be updated with additive changes and it can be deleted. Only the owning app can extend resources with this schema definition and only in the same directory where the owning app is registered. You can move the schema extension from *InDevelopment* to the *Available* state. |
| Available |  The schema extension schema is available for use by all apps and can be used by any app to extend resources (as long as that app has permissions to that resource). The schema extension can be updated with additive changes but it can **not** be deleted. You can move the schema extension from *Available* to the *Deprecated* state. |
| Deprecated |  When the schema extension is *Deprecated*, applications can still read and update extension properties based on the schema extension. The schema extension is not available to be viewed and cannot be used to create new properties. The schema extension cannot be updated or deleted. You can move a schema extension from *Deprecated* back to the *Available* state. |

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
Creating, reading, updating and deleting [Azure AD directory schema extensions](https://msdn.microsoft.com/en-us/library/azure/ad/graph/howto/azure-ad-graph-api-directory-schema-extensions) values on resources is supported through Microsoft Graph.  However, creating and managing Azure AD directory schema extensions definitions is not supported currently through Microsoft Graph.

## Permissions
The same [permission scopes](../authorization/permission_scopes.md) that are required to read from or write to a specific resource are also required to read from or write to any extensions data on that resource.  For example, for an app to be able to update the signed-in user's profile with custom app data, the app must have been granted the *User.ReadWrite.All* permission.

Additionally, to create and manage schema extension definitions, an application must be granted the *Directory.AccessAsUser.All* permission.
 
## Known limitations for extensions
-   Filtering on schema extension property values is not yet supported (but will be available very soon)
-   Change tracking (Delta Query) is not supported for open or schema extension properties.
-   You cannot specify an open extension at the same time you create a resource for administrative unit, device, group, organization or user. You must first create the resource and then specify the open extension data in a subsequent ``POST`` request on that resource.  
-   Deleting a schema extension definition will remove access to any custom data added based on the deleted schema. This is a temporary limitation.
-   Currently deleting a schema extension is possible in all states. In the future deletion will be possible only for schema extensions in the *InDevelopment* state.
-   To remove a schema extension complex type from a resource, you must set all the complex type's property values to `null`.  In the future this will be possible by simply setting the schema extension complex type to `null`.
-   Directory resources, such as users, groups and devices, currently limits the total number of schema extension property values that can be set on a resource, to 100.

## Extension examples
[Add custom data to Users using Open Extensions (preview)](extensibility_open_users.md)

[Add custom data to Groups using Schema Extensions (preview)](extensibility_schema_groups.md)
