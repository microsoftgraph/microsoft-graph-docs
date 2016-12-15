#  Microsoft Graph Delta Query (preview)

Delta query enables applications to discover newly created, updated, or deleted entities without performing a full read of the target resource with every request. Microsoft Graph applications can use delta query to efficiently synchronize changes with a local data store.

## Using Delta Query

The typical call pattern is as follows:

1.  The application begins by calling the delta function on the desired resource.
2.  Microsoft Graph will send a response containing the requested resource and a [state token](#state-tokens).

     a.  If a nextLink URL is returned, there are additional pages of data to be retrieved in the session. The application continues making requests using the nextLink URL until a deltaLink URL is included in the response.

     b.  If a deltaLink URL is returned, there is no more data about the existing state of the resource to be returned. For future requests, the application uses the deltaLink URL to learn about changes to the resource.
     
3.  When the application needs to learn about changes to the resource, it makes a new request using the deltaLink URL received in step 2. This request *may* be made immediately after completing step 2 or when the application checks for changes.
4.  Microsoft Graph returns a response describing changes to the resource since the previous request and either a nextLink URL or a deltaLink URL.

### State tokens

- A delta query GET request can return one of two possible tokens: _deltaToken_ or _skipToken_. 
- Each token reflects the state and represents a snapshot in time of the resource. Applying the latest token as a query parameter in a GET request identifies where you are in that round of change tracking. 
- State tokens also encode and include other query parameters (such as `$select` if the resource supports it) 
specified in the initial delta query request, so that you won't have to repeat them in subsequent delta query requests.

### Optional Query Parameters

If a client uses a query parameter, it must be specified in the initial request. Microsoft Graph will automatically encode the specified parameter(s) into the nextLink or deltaLink provided in the response. The calling application only needs to specify their desired query parameters once upfront. Microsoft Graph adds the specified parameters automatically for all subsequent requests.

There are several resource specific behaviors that will occur with different query parameters for Users, Groups, Organizational Contacts, or Administrative Units:

-   If a select query parameter is used, this indicates that the client prefers to only track changes on the properties or relationships specified in the select statement. This means that if a change occurs to a property that is not selected, the resource for which that property changed will not appear in the delta response after a subsequent request.
-   Expand is not supported.

## Resource Representation

-   Newly created entities are represented in the entity set using their standard representation.

-   Updated entities are represented by their id with *at least* the properties that have been updated, but additional properties may be included.

-   Changes to relationships on Users, Groups, Administrative Units, and Organizational Contacts are represented as annotations on the standard entity representation. These annotations will use the format *propertyName@delta*, and will only appear when the client explicitly chooses to track changes to the relationship by using the select parameter.

-   Removed entities are represented using only their *id* and a *@removed* node. The *@removed* node may include additional information about why the entity was removed.

> **Note on future change**: Removed entities nodes currently appear in the following format *“@removed” : “reason for removal”*. However, there will be a breaking change introduced in the future. Before delta query moves from /beta to /v1.0, an object will be nested inside of the removed node to give more information. For example, *@removed {reason: “reason for removal”}*. This object can be extended in the future to include additional metadata about the removal.

## Supported Resources

Delta query is currently supported in preview on the Microsoft Graph /beta endpoint for the following resources:

-   Users
-   Outlook Mail (Messages and mailFolder)
-   Outlook Calendar
-   Groups
-   Personal Contacts
-   Organizational Contacts
-   Administrative Units
-   Drive Items\*

> \* Tracking changes to drives and their children is already supported in v1.0. The usage pattern is similar to the other supported resources with some minor syntax differences. Delta query for drives will be updated in the future to be consistent with other resource types. For more detail about the current syntax, please see:
<https://graph.microsoft.io/en-us/docs/api-reference/v1.0/api/item_delta>

## Prerequisites

The same [permission scopes](../authorization/permission_scopes.md) that are required to read a specific resource are also required to perform delta query on that resource.

## Known Limitations

Tracking changes to relationships on Users, Groups, Organizational Contacts, and Administrative Units is only supported within the specific resource class for which changes are being tracked. For example, if a client is tracking changes on *groups* and has selected the *members* relationship, the client will only receive membership updates in the delta query response if those members are also *groups*. In other words, tracking group membership for users is not yet supported. The Microsoft Graph team understands that this is a high priority scenario and an update is targeted to be delivered in January 2017.

## Delta query request examples 

- [Get incremental changes to messages in a folder (preview)](./delta_query_messages.md)
- [Get incremental changes to groups (preview)](./delta_query_groups.md)
- [Get incremental changes to users (preview)](./delta_query_users.md)