---
title: "Known issues with Microsoft Graph"
description: "This article describes known issues with Microsoft Graph."
author: "MSGraphDocsVTeam"
localization_priority: Priority
---

# Known issues with Microsoft Graph

This article describes known issues with Microsoft Graph. 

To report a known issue, see the [Microsoft Graph support](https://developer.microsoft.com/graph/support) page.

For information about the latest updates to the Microsoft Graph API, see the [Microsoft Graph changelog](changelog.md).

## Bookings

### ErrorExceededFindCountLimit when querying bookingBusinesses

Getting the list of `bookingBusinesses` fails with the following error code when an organization has several Bookings businesses and the account making the request is not an administrator:

```json
{
  "error": {
    "code": "ErrorExceededFindCountLimit",
    "message":
      "The GetBookingMailboxes request returned too many results. Please specify a query to limit the results.",
  }
}
```

As a workaround, you can limit the set of businesses returned by the request by including a `query` parameter, for example:

```http
GET https://graph.microsoft.com/beta/bookingBusinesses?query=Fabrikam
```
## Calendars

### Accessing a shared calendar

When attempting to access events in a calendar that has been shared by another user using the following operation:

```http
GET /users/{id}/calendars/{id}/events
```

You may get HTTP 500 with the error code `ErrorInternalServerTransientError`. The error occurs because:

- Historically, there are two ways that calendar sharing has been implemented, which, for the purpose of differentiating them,
are referred to as the "old" approach and "new" approach.
- The new approach is currently available for sharing calendars with view or edit permissions, but not with delegate permissions.
- You can use the calendar REST API to view or edit shared calendars only if the calendars were shared using the **new** approach.
- You cannot use the calendar REST API to view or edit such calendars (or their events) if the calendars were shared using the **old** approach.


If a calendar was shared with view or edit permissions but using the old approach, you can now work around the error and manually upgrade the calendar sharing to use the new approach.
Over time, Outlook will automatically upgrade all shared calendars to use the new approach, including calendars shared with delegate permissions.

To manually upgrade a shared calendar to use the new approach, follow these steps:
1.	The recipient removes the calendar that was previously shared to them.
2.	The calendar owner re-shares the calendar in Outlook on the web, Outlook on iOS, or Outlook on Android.
3.	The recipient re-accepts the shared calendar using Outlook on the web. (It will be possible to use other Outlook clients soon.)
4.	The recipient verifies that the calendar has been re-shared successfully using the new approach by being able to view the shared calendar in Outlook on iOS or Outlook on Android.

A calendar shared with you in the new approach appears as just another calendar in your mailbox. You can use the calendar REST API to view or edit
events in the shared calendar, as if it's your own calendar. As an example:

```http
GET /me/calendars/{id}/events
```

### Adding and accessing ICS-based calendars in user's mailbox

Currently, there is partial support for a calendar based on an Internet Calendar Subscription (ICS):

* You can add an ICS-based calendar to a user mailbox through the user interface, but not through the Microsoft Graph API.
* [Listing the user's calendars](/graph/api/user-list-calendars?view=graph-rest-1.0) lets you get the **name**, **color** and **id** properties of each [calendar](/graph/api/resources/calendar?view=graph-rest-1.0) in the user's default calendar group, or a specified calendar group, including any ICS-based calendars. You cannot store or access the ICS URL in the calendar resource.
* You can also [list the events](/graph/api/calendar-list-events?view=graph-rest-1.0) of an ICS-based calendar.

### Attaching large files to events
An app with delegated permissions returns `HTTP 403 Forbidden` when attempting to [attach large files](outlook-large-attachments.md) to an Outlook message or event that is in a shared or delegated mailbox. With delegated permissions, [createUploadSession](/graph/api/attachment-createuploadsession?view=graph-rest-1.0) succeeds only if the message or event is in the signed-in user's mailbox.

### onlineMeetingUrl property support for Microsoft Teams

Currently, the **onlineMeetingUrl** property of a Skype meeting [event](/graph/api/resources/event?view=graph-rest-1.0) would indicate the online meeting URL. However, that property for a Microsoft Teams meeting event is set to null.

The beta version offers a workaround, where you can use the **onlineMeetingProvider** property of an [event](/graph/api/resources/event?view=graph-rest-beta) to verify if the provider is Microsoft Teams. Through the **onlineMeeting** property of the **event**, you can access the **joinUrl**.

## Change notifications

### Additional notifications for users

[Subscriptions](/graph/api/resources/subscription) to changes for **user** with **changeType** set to **updated** will also receive notifications of **changeType**: **updated** on user creation and user soft deletion.

### Additional notifications for groups

[Subscriptions](/graph/api/resources/subscription) to changes for **group** with **changeType** set to **updated** will also receive notifications of **changeType**: **updated** on group creation and group soft deletion.

## Cloud communications 

The Microsoft Teams client does not show the **View Meeting details**  menu for channel meetings created via the cloud communications API.

## Cloud Solution Provider apps

### CSP apps must use Azure AD endpoint

Cloud solution provider (CSP) apps must acquire tokens from the Azure AD (v1) endpoints to successfully call Microsoft Graph in their partner-managed customers. Currently, acquiring a token through the newer Azure AD v2.0 endpoint is not supported.

### Pre-consent for CSP apps doesn't work in some customer tenants

Under certain circumstances, pre-consent for CSP apps may not work for some of your customer tenants.

- For apps using delegated permissions, when using the app for the first time with a new customer tenant you might receive this error after sign-in: `AADSTS50000: There was an error issuing a token`.
- For apps using application permissions, your app can acquire a token, but unexpectedly gets an access denied message when calling Microsoft Graph.

We are working to fix this issue as soon as possible, so that pre-consent will work for all your customer tenants.

In the meantime, to unblock development and testing you can use the following workaround.

>**NOTE:** This is not a permanent solution and is only intended to unblock development.  This workaround will not be required once the aforementioned issue is fixed.  This workaround does not need to be undone once the fix is in place.

1. Open an Azure AD v2 PowerShell session and connect to your `customer` tenant by entering your admin credentials into the sign-in window. You can download and install Azure AD PowerShell V2 from [here](https://www.powershellgallery.com/packages/AzureAD).

    ```PowerShell
    Connect-AzureAd -TenantId {customerTenantIdOrDomainName}
    ```

2. Create the Microsoft Graph service principal.

    ```PowerShell
    New-AzureADServicePrincipal -AppId 00000003-0000-0000-c000-000000000000
    ```
## Contacts

### Organization contacts available in only beta

Only personal contacts are currently supported. Organizational contacts are not currently supported in `/v1.0`, but can be found in `/beta`.

### Default contacts folder

In the `/v1.0` version, `GET /me/contactFolders` does not include the user's default contacts folder.

A fix will be made available. Meanwhile, you can use the following [list contacts](/graph/api/user-list-contacts?view=graph-rest-1.0) query and the **parentFolderId** property
as a workaround to get the folder ID of the default contacts folder:

```http
GET https://graph.microsoft.com/v1.0/me/contacts?$top=1&$select=parentFolderId
```

In the above query:

1. `/me/contacts?$top=1` gets the properties of a [contact](/graph/api/resources/contact?view=graph-rest-1.0) in the default contacts folder.
2. Appending `&$select=parentFolderId` returns only the contact's **parentFolderId** property, which is the ID of the default contacts folder.


### Accessing contacts via a contact folder in beta

In the `/beta` version, there is currently an issue that prevents accessing a [contact](/graph/api/resources/contact?view=graph-rest-beta)
by specifying its parent folder in the REST request URL, as shown in the 2 scenarios below.

* Accessing a contact from a top level [contactFolder](/graph/api/resources/contactfolder?view=graph-rest-beta) of the user's.

```http
GET /me/contactfolders/{id}/contacts/{id}
GET /users/{id | userPrincipalName}/contactfolders/{id}/contacts/{id}
```

* Accessing a contact contained in a child folder of a **contactFolder**.  The example below shows one level of nesting, but a contact can be located in a child of a child and so on.

```http
GET /me/contactFolder/{id}/childFolders/{id}/.../contacts/{id}
GET /users/{id | userPrincipalName}/contactFolders/{id}/childFolders/{id}/contacts/{id}
```

As an alternative, you can simply [get](/graph/api/contact-get?view=graph-rest-beta) the contact by specifying its ID as shown below,
since GET /contacts in the `/beta` version applies to all the contacts in the user's mailbox:

```http
GET /me/contacts/{id}
GET /users/{id | userPrincipalName}/contacts/{id}
```
## Delta query

* OData context is sometimes returned incorrectly when tracking changes to relationships.
* Schema extensions (legacy) are not returned with $select statement, but are returned without $select.
* Clients cannot track changes to open extensions or registered schema extensions.

## Extensions

### Change tracking is not supported

Change tracking (delta query) is not supported for open or schema extension properties.

### Creating a resource and open extension at the same time

You cannot specify an open extension at the same time you create an instance of **administrativeUnit**, **device**, **group**, **organization** or **user**. You must first create the instance and then specify the open extension data in a subsequent ``POST`` request on that instance.

### Creating a resource instance and adding schema extension data at the same time

You cannot specify a schema extension in the same operation as creating an instance of **contact**, **event**, **message**, or **post**.
You must first create the resource instance and then do a `PATCH` to that instance to add a schema extension and custom data.

### Limit of 100 schema extension property values allowed per resource instance

Directory resources, such as **device**, **group** and **user**, currently limit the total number of schema extension property values that can be set on a resource instance, to 100.

### Filtering on schema extension properties not supported on all entity types

Filtering on schema extension properties (using the `$filter` expression) is not supported for Outlook entity types - **contact**, **event**, **message**, or **post**.

## Files (OneDrive)

* First time access to a user's personal drive through Microsoft Graph before the user accesses their personal site through a browser leads to a 401 response.

## Groups

### Permissions for groups and Microsoft Teams

Microsoft Graph exposes two permissions ([*Group.Read.All*](permissions-reference.md#group-permissions) and [*Group.ReadWrite.All*](permissions-reference.md#group-permissions)) for access to the APIs for groups and Microsoft Teams.
These permissions must be consented to by an administrator.
In the future, we plan to add new permissions for groups and teams that users can consent to.

Also, only the API for core group administration and management supports access using delegated or app-only permissions. 
All other features of the group API support only delegated permissions.

Examples of group features that support delegated and app-only permissions:

* Creating and deleting groups
* Getting and updating group properties pertaining to group administration or management
* Group [directory settings](/graph/api/resources/directoryobject?view=graph-rest-1.0), type, and synchronization
* Group owners and membership
* Getting group conversations and threads

Examples of group features that support only delegated permissions:

* Group events, photo
* External senders, accepted or rejected senders, group subscription
* User favorites and unseen count

### Policy

Using Microsoft Graph to create and name a Microsoft 365 group bypasses any Microsoft 365 group policies that are configured through Outlook Web App.

### Setting the allowExternalSenders property

There is currently an issue that prevents setting the **allowExternalSenders** property of a group in a POST or PATCH operation, in both `/v1.0` and `/beta`.

### Using delta query

For known issues using delta query, see the [delta query section](#delta-query) in this article.

## Identity and access | Application and service principal APIs

There are changes to the [application](/graph/api/resources/application?view=graph-rest-beta) and [servicePrincipal](/graph/api/resources/serviceprincipal?view=graph-rest-beta) entities currently in development. The following is a summary of current limitations and in-development API features.

Current limitations:

* Some application properties (such as appRoles and addIns) will not be available until all changes are completed.
* Only multi-tenant apps can be registered.
* Updating apps is restricted to apps registered after the initial beta update.
* Azure Active Directory users can register apps and add additional owners.
* Support for OpenID Connect and OAuth protocols.
* Policy assignments to an application fail.
* Operations on ownedObjects that require appId fail (For example, users/{id|userPrincipalName}/ownedObjects/{id}/...).

In development:

* Ability to register single tenant apps.
* Updates to servicePrincipal.
* Migration of existing Azure AD apps to updated model.
* Support for appRoles, pre-authorized clients, optional claims, group membership claims, and branding
* Microsoft account (MSA) users can register apps.
* Support for SAML and WsFed protocols.

## Identity and access | Conditional access

### Permissions

Currently, the Policy.Read.All permission is required to call POST and PATCH APIs. In the future, the Policy.ReadWrite.ConditionalAccess permission will enable you to read policies from the directory.

## JSON Batching

### No nested batch

JSON batch requests must not contain any nested batch requests.

### All individual requests must be synchronous

All requests contained in a batch request must be executed synchronously. If present, the `respond-async` preference will be ignored.

### No transactions

Microsoft Graph does not currently support transactional processing of individual requests. The `atomicityGroup` property on individual requests will be ignored.

### URIs must be relative

Always specify relative URIs in batch requests. Microsoft Graph then makes these URLs absolute by using the version endpoint included in the batch URL.

### Limit on batch size

JSON batch requests are currently limited to 20 individual requests.

### Simplified dependencies

Individual requests can depend on other individual requests. Currently, requests can only depend on a single other request, and must follow one of these three patterns:

1. Parallel - no individual request states a dependency in the `dependsOn` property.
2. Serial - all individual requests depend on the previous individual request.
3. Same - all individual requests that state a dependency in the `dependsOn` property, state the same dependency.

As JSON batching matures, these limitations will be removed.

## Mail (Outlook)

### Attaching large files to messages
An app with delegated permissions returns `HTTP 403 Forbidden` when attempting to [attach large files](outlook-large-attachments.md) to an Outlook message or event that is in a shared or delegated mailbox. With delegated permissions, [createUploadSession](/graph/api/attachment-createuploadsession?view=graph-rest-1.0) succeeds only if the message or event is in the signed-in user's mailbox.

### The comment parameter for creating a draft

The **comment** parameter for creating a reply or forward draft ([createReply](/graph/api/message-createreply?view=graph-rest-1.0),
[createReplyAll](/graph/api/message-createreplyall?view=graph-rest-1.0), [createForward](/graph/api/message-createforward?view=graph-rest-1.0))
does not become part of the body of the resultant message draft.

### GET messages returns chats in Microsoft Teams

In both the v1 and beta endpoints, the response of `GET /users/id/messages` includes the user's Microsoft Teams chats that occurred outside the scope of a team or channel. These chat messages have "IM" as their subject.

## Teamwork (Microsoft Teams)

### GET /teams is not supported

To get a list of teams, see [list all teams](teams-list-all-teams.md) and 
[list your teams](/graph/api/user-list-joinedteams?view=graph-rest-1.0).

### POST /teams is only available in beta
To create teams in v1.0, see [create team](/graph/api/team-put-teams?view=graph-rest-1.0).

### Missing teams in list all teams

Some teams that were created in the past but haven't been used recently by a Microsoft Teams user aren't listed by
[list all teams](teams-list-all-teams.md).
New teams will be listed.
Certain old teams don't have a **resourceProvisioningOptions** property that contains "Team",
which is set on newly created teams and teams that are visited in Microsoft Teams.
In the future, we will set **resourceProvisioningOptions** on existing teams that have not been opened in Microsoft Teams.

## Users

### No instant access after creation

Users can be created immediately through a POST on the user entity. A Microsoft 365 license must first be assigned to a user, in order to get access to Microsoft 365 services. Even then, due to the distributed nature of the service, it might take 15 minutes before files, messages and events entities are available for use for this user, through the Microsoft Graph API. During this time, apps will receive a 404 HTTP error response.

### Photo restrictions

Reading and updating a user's profile photo is only possible if the user has a mailbox. Additionally, any photos that *may* have been previously stored using the **thumbnailPhoto** property (using the Azure AD Graph or through AD Connect synchronization) are no longer accessible through the Microsoft Graph **photo** property of the [user](/graph/api/resources/user?view=graph-rest-1.0) resource.
Failure to read or update a photo, in this case, would result in the following error:

```javascript
{
  "error": {
    "code": "ErrorNonExistentMailbox",
    "message": "The SMTP address has no mailbox associated with it."
  }
}
```

### Using delta query

For known issues using delta query, see the [delta query section](#delta-query) in this article.

### Revoke sign-in sessions returns wrong HTTP code

The [user: revokeSignInSessions API](/graph/api/user-revokesigninsessions?view=graph-rest-1.0) should return a `204 No content` response for successful revocations, and an HTTP error code (4xx or 5xx) if anything goes wrong with the request.  However, due to a service issue, this API returns a `200 OK` and a Boolean parameter that is always true.  Until this is fixed, developers are simply advised to treat any 2xx return code as success for this API.

### Incomplete objects when using getByIds request

Requesting objects using [Get directory objects from a list of IDs](/graph/api/directoryobject-getbyids?view=graph-rest-1.0) should return full objects. However, currently [user](/graph/api/resources/user?view=graph-rest-1.0) objects on the v1.0 endpoint are returned with a limited set of properties. As a temporary workaround, when you use the operation in combination with the `$select` query option, more complete [user](/graph/api/resources/user?view=graph-rest-1.0) objects will be returned. This behavior is not in accordance with the OData specifications. Because this behavior might be updated in the future, use this workaround only when you provide `$select=` with all the properties you are interested in, and only if future breaking changes to this workaround are acceptable.

## Query parameter limitations

* Multiple namespaces are not supported.
* GETs on `$ref` and casting is not supported on users, groups, devices, service principals and applications.
* `@odata.bind` is not supported.  This means that developers won’t be able to properly set the **acceptedSenders** or **rejectedSenders** navigation property on a group.
* `@odata.id` is not present on non-containment navigations (like messages) when using minimal metadata.
* `$expand`:
  * No support for `nextLink`
  * No support for more than 1 level of expand
  * No support with extra parameters (`$filter`, `$select`)
* `$filter`:
  * `/attachments` endpoint does not support filters. If present, the `$filter` parameter is ignored.
  * Cross-workload filtering is not supported.
* `$search`:
  * Full-text search is only available for a subset of entities such as messages.
  * Cross-workload searching is not supported.


## Functionality available only in Office 365 REST or Azure AD Graph APIs

Some functionality is not yet available in Microsoft Graph. If you don't see the functionality you're looking for, you can use the endpoint-specific [Office 365 REST APIs](/previous-versions/office/office-365-api/). For Azure Active Directory, see [Migrate Azure AD Graph apps to Microsoft Graph](./migrate-azure-ad-graph-planning-checklist.md).