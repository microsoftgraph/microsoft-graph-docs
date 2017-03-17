#  Use delta query to track changes in Microsoft Graph data (preview)

Delta query enables applications to discover newly created, updated, or deleted entities without performing a full read of the target resource with every request. Microsoft Graph applications can use delta query to efficiently synchronize changes with a local data store.

## Use delta query to track changes in a resource collection

The typical call pattern is as follows:

1.  The application begins by calling a GET request with the delta function on the desired resource.
2.  Microsoft Graph will send a response containing the requested resource and a [state token](#state-tokens).

     a.  If a `nextLink` URL is returned, there are additional pages of data to be retrieved in the session. The application continues making requests using the `nextLink` URL until a `deltaLink` URL is included in the response.

     b.  If a `deltaLink` URL is returned, there is no more data about the existing state of the resource to be returned. For future requests, the application uses the `deltaLink` URL to learn about changes to the resource.
     
3.  When the application needs to learn about changes to the resource, it makes a new request using the `deltaLink` URL received in step 2. This request *may* be made immediately after completing step 2 or when the application checks for changes.
4.  Microsoft Graph returns a response describing changes to the resource since the previous request, and either a `nextLink` URL or a `deltaLink` URL.

### State tokens

A delta query GET response always includes a URL specified in a `nextLink` or `deltaLink` response header. 
The `nextLink` URL includes a _skipToken_, and a `deltaLink` URL includes a _deltaToken_. 

These tokens are completely opaque to the client. The following is all you need to know about them:

- Each token reflects the state and represents a snapshot of the resource in that round of change tracking. 
- These state tokens also encode and include other query parameters (such as `$select` if the resource supports it) 
specified in the initial delta query request, so that you won't have to repeat them in subsequent delta query requests.
- When carrying out delta query, you can simply copy and apply the `nextLink` or `deltaLink` URL as is to the next **delta** function call 
without having to inspect the contents of the URL, including its state token.


### Optional query parameters

If a client uses a query parameter, it must be specified in the initial request. Microsoft Graph will automatically encode the specified parameter(s) into the `nextLink` or `deltaLink` provided in the response. 
The calling application only needs to specify their desired query parameters once upfront. Microsoft Graph adds the specified parameters automatically for all subsequent requests.

For users and groups, there are restrictions on using some query parameters:

-   If a `$select` query parameter is used, this indicates that the client prefers to only track changes on the properties or relationships specified in the `$select` statement. 
This means that if a change occurs to a property that is not selected, the resource for which that property changed will not appear in the delta response after a subsequent request.
-   `$expand` is not supported.

## Resource representation in the delta query response

-   Newly created instances of a supported resource are represented in the delta query response using their standard representation.

-   Updated instances are represented by their **id** with *at least* the properties that have been updated, but additional properties may be included.

-   Changes to relationships on users and groups are represented as annotations on the standard resource representation. These annotations will use the format `propertyName@delta`, 
and will only appear when the client explicitly chooses to track changes to the relationship by using the `$select` parameter.

-   Removed instances are represented using only their **id** and an `@removed` node. The `@removed` node may include additional information about why the instance was removed.

> **Note on future change**: Removed instances currently appear with the `@removed` node in the following format *“@removed” : “reason for removal”*. However, there will be a breaking change introduced in the future. Before delta query moves from /beta to /v1.0, an object will be nested inside of the removed node to give more information. For example, *@removed {reason: “reason for removal”}*. This object can be extended in the future to include additional metadata about the removal.

## Supported resources

Delta query is currently supported in preview on the Microsoft Graph /beta endpoint for the following resources.

| **Resource collection** | **API** |
|:------ | :------ |
| Events in a calendar view (date range) of the primary calendar | [delta](../api-reference/beta/api/event_delta.md) function of the [event](../api-reference/beta/resources/event.md) resource |
| Groups | [delta](../api-reference/beta/api/group_delta.md) function of the [group](../api-reference/beta/resources/group.md) resource |
| Mail folders | [delta](../api-reference/beta/api/mailfolder_delta.md) function of the [mailFolder](../api-reference/beta/resources/mailFolder.md) resource |
| Messages in a folder | [delta](../api-reference/beta/api/message_delta.md) function of the [message](../api-reference/beta/resources/message.md) resource | 
| Personal contact folders | [delta](../api-reference/beta/api/contactfolder_delta.md) function of the [contactFolder](../api-reference/beta/resources/contactfolder.md) resource |
| Personal contacts in a folder | [delta](../api-reference/beta/api/contact_delta.md) function of the [contact](../api-reference/beta/resources/contact.md) resource |
| Users | [delta](../api-reference/beta/api/user_delta.md) function of the [user](../api-reference/beta/resources/user.md) resource | 
| Drive items\* | [delta](../api-reference/beta/api/item_delta.md) function of the [driveItem](../api-reference/beta/resources/driveItem.md) resource |


> \* Tracking changes to drives and their children is already supported in v1.0. The usage pattern is similar to the other supported resources with some minor syntax differences. Delta query for drives will be updated in the future to be consistent with other resource types. For more detail about the current syntax, please see:
<https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/api/item_delta>

## Prerequisites

The same [permissions](../authorization/permission_scopes.md) that are required to read a specific resource are also required to perform delta query on that resource.

## Known limitations

Tracking changes to relationships on users and groups is only supported within the specific resource class for which changes are being tracked. For example, if a client is tracking changes on *groups* 
and has selected the **members** relationship, the client will only receive membership updates in the delta query response if those members are also *groups*. 
In other words, tracking group membership for users is not yet supported. The Microsoft Graph team understands that this is a high priority scenario and an update is targeted to be delivered soon.

## Delta query request examples 

- [Get incremental changes to events in a calendar view (preview)](../Concepts/delta_query_events.md)
- [Get incremental changes to messages in a folder (preview)](./delta_query_messages.md)
- [Get incremental changes to groups (preview)](./delta_query_groups.md)
- [Get incremental changes to users (preview)](./delta_query_users.md)