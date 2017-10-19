#  Use delta query to track changes in Microsoft Graph data

Delta query enables applications to discover newly created, updated, or deleted entities without performing a full read of the target resource with every request. Microsoft Graph applications can use delta query to efficiently synchronize changes with a local data store.

## Use delta query to track changes in a resource collection

The typical call pattern is as follows:

1.  The application begins by calling a GET request with the delta function on the desired resource.
2.  Microsoft Graph sends a response containing the requested resource and a [state token](#state-tokens).

     a.  If a `nextLink` URL is returned, there may be additional pages of data to be retrieved in the session. The application continues making requests using the `nextLink` URL to retrieve all pages of data until a `deltaLink` URL is returned in the response.

     b.  If a `deltaLink` URL is returned, there is no more data about the existing state of the resource to be returned. For future requests, the application uses the `deltaLink` URL to learn about changes to the resource.
     
3.  When the application needs to learn about changes to the resource, it makes a new request using the `deltaLink` URL received in step 2. This request *may* be made immediately after completing step 2 or when the application checks for changes.
4.  Microsoft Graph returns a response describing changes to the resource since the previous request, and either a `nextLink` URL or a `deltaLink` URL.

### State tokens

A delta query GET response always includes a URL specified in a `nextLink` or `deltaLink` response header. 
The `nextLink` URL includes a _skipToken_, and a `deltaLink` URL includes a _deltaToken_. 

These tokens are opaque to the client. The following details are what you need to know about them:

- Each token reflects the state and represents a snapshot of the resource in that round of change tracking. 
- The state tokens also encode and include other query parameters (such as `$select`) 
specified in the initial delta query request. Therefore, it's not required to repeat them in subsequent delta query requests.
- When carrying out delta query, you can copy and apply the `nextLink` or `deltaLink` URL to the next **delta** function call without having to inspect the contents of the URL, including its state token.


### Optional query parameters

If a client uses a query parameter, it must be specified in the initial request. Microsoft Graph automatically encodes the specified parameter into the `nextLink` or `deltaLink` provided in the response. The calling application only needs to specify their desired query parameters once upfront. Microsoft Graph adds the specified parameters automatically for all subsequent requests.

For users and groups, there are restrictions on using some query parameters:

-   If a `$select` query parameter is used, the parameter indicates that the client prefers to only track changes on the properties or relationships specified in the `$select` statement. If a change occurs to a property that is not selected, the resource for which that property changed does not appear in the delta response after a subsequent request.
-   `$expand` is not supported.

For users and groups beta (preview) APIs, scoping filters allow you to track changes to one or more specific users or groups by objectId. For example, the following request: https://graph.microsoft.com/beta/groups/delta/?$filter= id eq '477e9fc6-5de7-4406-bb2a-7e5c83c9ae5f' or id eq '004d6a07-fe70-4b92-add5-e6e37b8acd8e' returns changes for the groups matching the ids specified in the query filter. 

## Resource representation in the delta query response

-   Newly created instances of a supported resource are represented in the delta query response using their standard representation.

-   Updated instances are represented by their **id** with *at least* the properties that have been updated, but additional properties may be included.

-   Relationships on users and groups are represented as annotations on the standard resource representation. These annotations use the format `propertyName@delta`. The annotations are included in the response of the initial delta query request.

Removed instances are represented by their **id** and an `@removed` object. The `@removed` object may include additional information about why the instance was removed. For example,  "@removed": {"reason": “changed”}.

Possible @removed reasons can be *changed* or *deleted*.
- *Changed* indicates the item was deleted and can be restored from [deletedItems](../api-reference/beta/resources/directory.md).
- *Deleted* indicates the item is deleted and cannot be restored.

The `@removed` object can be returned in the initial delta query response and in tracked (deltaLink) responses. Clients using delta query requests should be designed to handle these objects in the responses.

## Supported resources

Delta query is currently supported for the following resources.

| **Resource collection** | **API** |
|:------ | :------ |
| Events in a calendar view (date range) of the primary calendar | [delta](../api-reference/v1.0/api/event_delta.md) function of the [event](../api-reference/v1.0/resources/event.md) resource |
| Groups | [delta](../api-reference/v1.0/api/group_delta.md) function of the [group](../api-reference/v1.0/resources/group.md) resource |
| Mail folders | [delta](../api-reference/v1.0/api/mailfolder_delta.md) function of the [mailFolder](../api-reference/v1.0/resources/mailFolder.md) resource |
| Messages in a folder | [delta](../api-reference/v1.0/api/message_delta.md) function of the [message](../api-reference/v1.0/resources/message.md) resource | 
| Personal contact folders | [delta](../api-reference/v1.0/api/contactfolder_delta.md) function of the [contactFolder](../api-reference/v1.0/resources/contactfolder.md) resource |
| Personal contacts in a folder | [delta](../api-reference/v1.0/api/contact_delta.md) function of the [contact](../api-reference/v1.0/resources/contact.md) resource |
| Users | [delta](../api-reference/v1.0/api/user_delta.md) function of the [user](../api-reference/v1.0/resources/user.md) resource | 
| Drive items\* | [delta](../api-reference/v1.0/api/driveitem_delta.md) function of the [driveItem](../api-reference/v1.0/resources/driveitem.md) resource |


> \* The usage pattern for OneDrive resources is similar to the other supported resources with some minor syntax differences. Delta query for drives will be updated in the future to be consistent with other resource types. For more detail about the current syntax, see
[Track changes for a Drive](https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/api/item_delta).

## Prerequisites

The same [permissions](./permissions_reference.md) that are required to read a specific resource are also required to perform delta query on that resource.

## Delta query request examples 

- [Get incremental changes to events in a calendar view](../concepts/delta_query_events.md)
- [Get incremental changes to messages in a folder](./delta_query_messages.md)
- [Get incremental changes to groups](./delta_query_groups.md)
- [Get incremental changes to users](./delta_query_users.md)
