---
title: "Use delta query to track changes in Microsoft Graph data"
description: "Delta query enables applications to discover newly created, updated, or deleted entities without performing a full read of the target resource with every request. Microsoft Graph applications can use delta query to efficiently synchronize changes with a local data store."
author: "piotrci"
localization_priority: Priority
---

# Use delta query to track changes in Microsoft Graph data

Delta query enables applications to discover newly created, updated, or deleted entities without performing a full read of the target resource with every request. Microsoft Graph applications can use delta query to efficiently synchronize changes with a local data store.

## Use delta query to track changes in a resource collection

The typical call pattern is as follows:

1. The application begins by calling a GET request with the delta function on the desired resource.
2. Microsoft Graph sends a response containing the requested resource and a [state token](#state-tokens).

     a.  If a `nextLink` URL is returned, there may be additional pages of data to be retrieved in the session. The application continues making requests using the `nextLink` URL to retrieve all pages of data until a `deltaLink` URL is returned in the response.

     b.  If a `deltaLink` URL is returned, there is no more data about the existing state of the resource to be returned. For future requests, the application uses the `deltaLink` URL to learn about changes to the resource.

3. When the application needs to learn about changes to the resource, it makes a new request using the `deltaLink` URL received in step 2. This request *may* be made immediately after completing step 2 or when the application checks for changes.
4. Microsoft Graph returns a response describing changes to the resource since the previous request, and either a `nextLink` URL or a `deltaLink` URL.

>**Note:** Resources stored in Azure Active Directory (such as users and groups) support "sync from now" scenarios. This allows you to skip steps 1 and 2 above (if you are not interested in retrieving the full state of the resource) and ask for the latest `deltaLink` instead. Append `$deltaToken=latest` to the `delta` function and the response will contain a `deltaLink` and no resource data.

### State tokens

A delta query GET response always includes a URL specified in a `nextLink` or `deltaLink` response header.
The `nextLink` URL includes a _skipToken_, and a `deltaLink` URL includes a _deltaToken_.

These tokens are opaque to the client. The following details are what you need to know about them:

- Each token reflects the state and represents a snapshot of the resource in that round of change tracking.

- The state tokens also encode and include other query parameters (such as `$select`) specified in the initial delta query request. Therefore, it's not required to repeat them in subsequent delta query requests.

- When carrying out delta query, you can copy and apply the `nextLink` or `deltaLink` URL to the next **delta** function call without having to inspect the contents of the URL, including its state token.

### Optional query parameters

If a client uses a query parameter, it must be specified in the initial request. Microsoft Graph automatically encodes the specified parameter into the `nextLink` or `deltaLink` provided in the response. The calling application only needs to specify their desired query parameters once upfront. Microsoft Graph adds the specified parameters automatically for all subsequent requests.

For users and groups, there are restrictions on using some query parameters:

- If a `$select` query parameter is used, the parameter indicates that the client prefers to only track changes on the properties or relationships specified in the `$select` statement. If a change occurs to a property that is not selected, the resource for which that property changed does not appear in the delta response after a subsequent request.
- `$expand` is only suported for the `manager` and `members` navigational property for users and groups respectively.

- Scoping filters allow you to track changes to one or more specific users or groups by objectId. For example, the following request: https://graph.microsoft.com/beta/groups/delta/?$filter= id eq '477e9fc6-5de7-4406-bb2a-7e5c83c9ae5f' or id eq '004d6a07-fe70-4b92-add5-e6e37b8acd8e' returns changes for the groups matching the ids specified in the query filter.

## Resource representation in the delta query response

- Newly created instances of a supported resource are represented in the delta query response using their standard representation.

- Updated instances are represented by their **id** with *at least* the properties that have been updated, but additional properties may be included.

- Relationships on users and groups are represented as annotations on the standard resource representation. These annotations use the format `propertyName@delta`. The annotations are included in the response of the initial delta query request.

Removed instances are represented by their **id** and an `@removed` object. The `@removed` object may include additional information about why the instance was removed. For example,  "@removed": {"reason": “changed”}.

Possible @removed reasons can be *changed* or *deleted*.

- *Changed* indicates the item was deleted and can be restored from [deletedItems](/graph/api/resources/directory?view=graph-rest-beta).

- *Deleted* indicates the item is deleted and cannot be restored.

The `@removed` object can be returned in the initial delta query response and in tracked (deltaLink) responses. Clients using delta query requests should be designed to handle these objects in the responses.

## Supported resources

Delta query is currently supported for the following resources.

| **Resource collection** | **API** |
|:------ | :------ |
| Applications (preview) | [delta](/graph/api/application-delta?view=graph-rest-beta) function of the [application](/graph/api/resources/application?view=graph-rest-beta) resource (preview) |
| Directory objects | [delta](/graph/api/directoryobject-delta?view=graph-rest-beta) function of the [directoryObjects](/graph/api/resources/directoryobject?view=graph-rest-beta) resource (preview) |
| Directory roles | [delta](/graph/api/directoryrole-delta?view=graph-rest-1.0) function of the [directoryRole](/graph/api/resources/directoryrole?view=graph-rest-1.0) resource |
| Events in a calendar view (date range) of the primary calendar | [delta](/graph/api/event-delta?view=graph-rest-1.0) function of the [event](/graph/api/resources/event?view=graph-rest-1.0) resource |
| Groups | [delta](/graph/api/group-delta?view=graph-rest-1.0) function of the [group](/graph/api/resources/group?view=graph-rest-1.0) resource |
| Mail folders | [delta](/graph/api/mailfolder-delta?view=graph-rest-1.0) function of the [mailFolder](/graph/api/resources/mailfolder?view=graph-rest-1.0) resource |
| Messages in a folder | [delta](/graph/api/message-delta?view=graph-rest-1.0) function of the [message](/graph/api/resources/message?view=graph-rest-1.0) resource |
| Personal contact folders | [delta](/graph/api/contactfolder-delta?view=graph-rest-1.0) function of the [contactFolder](/graph/api/resources/contactfolder?view=graph-rest-1.0) resource |
| Personal contacts in a folder | [delta](/graph/api/contact-delta?view=graph-rest-1.0) function of the [contact](/graph/api/resources/contact?view=graph-rest-1.0) resource |
| Service principals (preview) | [delta](/graph/api/serviceprincipal-delta?view=graph-rest-beta) function of the [servicePrincipal](/graph/api/resources/serviceprincipal?view=graph-rest-beta) resource (preview) |
| Users | [delta](/graph/api/user-delta?view=graph-rest-1.0) function of the [user](/graph/api/resources/user?view=graph-rest-1.0) resource |
| Drive items\* | [delta](/graph/api/driveitem-delta?view=graph-rest-1.0) function of the [driveItem](/graph/api/resources/driveitem?view=graph-rest-1.0) resource |
| Planner items\*\* | [delta](/graph/api/planneruser-list-delta?view=graph-rest-beta) function of the all segment of [plannerUser](/graph/api/resources/planneruser?view=graph-rest-beta) resource (preview) |

> \* The usage pattern for OneDrive resources is similar to the other supported resources with some minor syntax differences. Delta query for drives will be updated in the future to be consistent with other resource types. For more detail about the current syntax, see
[Track changes for a Drive](/graph/api/item-delta?view=graph-rest-1.0).

> \*\* The usage pattern for Planner resources is similar to other supported resources with a few differences.  For details, see [Track changes for Planner](/graph/api/planneruser-list-delta?view=graph-rest-beta).

## Prerequisites

The same [permissions](./permissions-reference.md) that are required to read a specific resource are also required to perform delta query on that resource.

## Delta query request examples

- [Get incremental changes to events in a calendar view](delta-query-events.md)
- [Get incremental changes to messages in a folder](./delta-query-messages.md)
- [Get incremental changes to groups](./delta-query-groups.md)
- [Get incremental changes to users](./delta-query-users.md)
