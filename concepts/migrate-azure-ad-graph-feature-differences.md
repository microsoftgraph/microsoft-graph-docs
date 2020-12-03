---
title: "Feature differences between Azure AD Graph and Microsoft Graph"
description: "Describes feature differences between Azure Active Directory (Azure AD) API and Microsoft Graph API, in order to help you migrate apps quickly and easily."
author: "dkershaw10"
localization_priority: Normal
ms.prod: "azure-active-directory"
---

# Feature differences between Azure AD Graph and Microsoft Graph

This article is part of *step 1: review API differences* of the [process to migrate apps](migrate-azure-ad-graph-planning-checklist.md).

Many features in Microsoft Graph work similarly to their Azure AD Graph counterparts. However, a few have been changed and/or improved. Here, you'll learn how to adapt your apps to take advantage of these differences.  Frequently, the changes are minor, but well worth the effort.

This article explores how Microsoft Graph handles:

- Directory schema extensions
- Differential queries
- Batching

## Directory schema extensions

If your app uses Azure AD Graph directory extensions, you can continue to use the same basic APIs (with Microsoft Graph request URLs) to:

- Manage extension property definitions using the **extensionProperties** property on the [application][/graph/api/resources/application?view=graph-rest-v1.0) resource.
- Get available extension properties using the [getAvailableExtensionProperties](/graph/api/directoryobject-getavailableextensionproperties?view=graph-rest-v1.0) action.
- Read extension values using GET and `$select`
- Search on extension values using GET and `$filter`
- Update extension values using PATCH
- Remove extension values using PATCH (set to **null**)

Microsoft Graph provides an enhanced schema extensions developer experience, which today is not backwards compatible with Azure AD Graph directory extensions. To learn more, see [schema extensions in add custom data](./extensibility-overview.md#schema-extensions).

### Recommended migration approach

If your Azure AD Graph app uses directory extensions, take an incremental approach to migrate the app to Microsoft Graph.

First, switch your app to using Microsoft Graph API calls, but let the app continue to leverage Azure AD Graph directory extensions.

Then, you can switch to using Microsoft Graph schema extensions. In some cases, switching will not be appropriate. Do not switch if:

- Your app uses directory extensions created through AD Connect
- Your app sets directory extension values that are used in token claims by other apps
- Your app sets directory extension values that are used in dynamic membership rules 

>**NOTE**: Using Microsoft Graph schema extension properties as claims in a token using optional claims or in a dynamic membership rule is not yet supported.

To switch to the newer Microsoft Graph schema extension model, you'll need to:

- Define new schema extension definitions using Microsoft Graph.
- Update the app to support the new schema extension definitions.
- Migrate the data from the Azure AD schema extension properties to the new Microsoft Graph schema extension properties.  Automatic migration of data is not supported.

## Differential queries

Azure AD Graph and Microsoft Graph let you track changes using queries.  The high-level approach is similar between the two APIs, but the syntax is different.

Azure AD Graph calls these differential queries.  In Microsoft Graph, they're [delta queries](./delta-query-overview.md).

The following table highlights key similarities and differences:

|Delta request |Azure AD Graph | Microsoft Graph |
|----|----|----|
| _Initial data request_ | Uses a query parameter:<br>`GET /groups?deltaLink=` | Uses a function: <br> `GET /groups/delta` |
| _Get new changes_ | `GET /groups?deltaLink={deltaToken}` | `GET /groups/delta?$deltaToken={deltaToken}` |
| _Sync from now_ |Uses a custom HTTP header:<br> `ocp-aad-dq-include-only-delta-token: true` | Uses a query parameter: <br> `GET /groups/delta?$deltaToken=latest` |
| _Track changes for directoryObjects_ | Gets changes for multiple resource (user and group) in the same operation:&nbsp;&nbsp;<br> `GET /directoryObject?$filter=isof('User') or isof('Group')&deltaLink=` | Uses separate queries with Microsoft Graph, one for each resource. |
| _Get resource and relationship changes_ | All requests return resource and relationship changes, if the resource has relationships. | `GET /groups/delta?$expand=members` |
| _Response indicating new and changed items_ | <ul><li><p>Represents newly created instances using their standard representation.</p></li><li><p>Updated instances are represented by their id with *at least* the properties that have been updated. Other properties may be included.</p></li><li><p>Relationships are represented as the `directoryLinkChange` type.</p></li></ul>|<ul><li><p>Represents newly created instances using their standard representation.</p></li><li><p>Updated instances are represented by their id with *at least* the properties that have been updated. Other properties may be included.</p></li><li><p>Relationships are represented as annotations on the standard resource representation. These annotations use the format `propertyName@delta`, for example `members@delta` for a group's membership changes.</p></li></ul> |
| _Response indicating  deleted items_| Indicates a deleted item with an additional property of *aad.isDeleted* set to true. | Indicates a deleted item with the \@removed annotation. It may also contain a reason code, which indicates if the item is deleted, but can be restored, or is permanently deleted. |

If your app is already storing state data, consider using the "sync from now" shown earlier to help manage the transition to delta queries.

## Batching

Azure AD Graph used a system called multi-part MIME messages to manage batching.  Microsoft Graph uses [JSON batching](json-batching.md) to permit up to 20 requests in a single batch operation. The JSON batching mechanism is significantly simpler to use, especially together with JSON parsing libraries.  It also allows for sequencing batch operations.  However, it is not backwards compatible with the Azure AD Graph batching approach.

## Next Steps

- Learn about [resource differences](migrate-azure-ad-graph-resource-differences.md) between Azure AD Graph and Microsoft Graph.
- Review the [checklist](migrate-azure-ad-graph-planning-checklist.md) again.

<!-- {
  "type": "#page.annotation",
  "suppressions": [
    "Warning: /concepts/migrate-azure-ad-graph-feature-changes.md:
      Failed to parse any rows out of table with headers: |Task|Azure AD Graph|Microsoft Graph|"
  ],
}
-->