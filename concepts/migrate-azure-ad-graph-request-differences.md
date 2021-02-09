---
title: "Request differences between Azure AD Graph and Microsoft Graph"
description: "Describes how Microsoft Graph requests differ from Azure AD requests, which helps migrate apps to the newer service.."
author: "dkershaw10"
localization_priority: Normal
ms.prod: "azure-active-directory"
---

# Request differences between Azure AD Graph and Microsoft Graph

This article is part of *step 1: review API differences* of the [process to migrate apps](migrate-azure-ad-graph-planning-checklist.md).

Microsoft Graph and the Azure AD Graph API are both REST APIs and they each support ODATA conventions for query parameters. However, the syntax varies between these two APIs.

Use the [Graph Explorer](https://aka.ms/ge) to try these request patterns against your own data, as it's a great way to learn about the request and response differences.

## Basic requests

The following table highlights the main request differences between the two APIs:

|Request details| Azure AD Graph | Microsoft Graph |
|---|---|---|
|Request syntax| `https://graph.windows.net/{tenant_id}/` <br> `{resource}?{version}&query-parameters` | `https://graph.microsoft.com/`<br>`{version}/{resource}?query-parameters`|
|Service&nbsp;endpoints:||
|-&nbsp;Global|`https://graph.windows.net`|`https://graph.microsoft.com`|
|-&nbsp;US&nbsp;Gov&nbsp;L4|`https://graph.microsoftazure.us`|`https://graph.microsoft.us`|
|-&nbsp;US&nbsp;Gov&nbsp;L5&nbsp;(DOD)|`https://graph.microsoftazure.us`|`https://dod-graph.microsoft.us`|
|-&nbsp;Germany|`https://graph.cloudapi.de`|`https://graph.microsoft.de`|
|-&nbsp;China&nbsp;(21Vianet)| `https://graph.chinacloudapi.cn`|`https://microsoftgraph.chinacloudapi.cn`|
|{tenant_id}|Specify the ID of the tenant in the request.|It's optional to specify a tenant ID in the request as it is inferred from the access token.<br><br>If you specify the tenant ID, it goes between the `{version}` and the `{resource}` in the request URL.|
|{version}|Specify the release version of Azure AD Graph in the request using a required query parameter.|Specify the release version of Microsoft Graph in the request as part of the URL path just after the service endpoint.|

You can continue to use the same query parameters in Microsoft Graph as Azure AD Graph.

### Example request comparison

Suppose you want a list of all users with names beginning with "Dan".

In Azure AD Graph, you might use this request:

`GET https://graph.windows.net/contoso.com/users?$filter=startswith(givenName,'Dan')&api-version=1.6` or

`GET https://graph.windows.net/myOrganization/users?$filter=startswith(givenName,'Dan')&api-version=1.6`


This request:

- Targets version 1.6 of Azure AD Graph.
- Specifies `contoso.com` as the tenant ID. The alternative shows the use of an alias `myOrganization` based on the tenant ID in the access token.
- Calls the users resource.
- Uses the `$filter` query parameter to limit the response to given names that begin with `Dan`.

Results include users with names like Daniel, Danforth, Danielle, Danerys, and so on.

A similar request for Microsoft Graph would be:

`GET https://graph.microsoft.com/v1.0/users?$filter=startswith(givenName,'Dan')`

Here:

- The version is `v1.0`.
- The tenant ID is inferred from the access token (not shown).
- The resource and `$filter` query parameter are the same as the Azure AD query.

> **NOTE**: If you're using the Azure AD Graph .NET client library, see [.NET client libraries](migrate-azure-ad-graph-client-libraries.md) for more specific strategies and assistance to move to the Microsoft Graph .NET client library.

### Key identifiers: objectId vs id

In Azure AD Graph, all entity resource types have a unique identifier (or key) called **objectId**.  For the most part (unless otherwise stated) this same identifier is called **id** in Microsoft Graph.

## Default properties and $select

Use the `$select` query parameter, in GET requests, to customize the response to include all the properties that your app requires.

Microsoft Graph **get** or **list** operations for user or group resources returns only a subset of all properties, known as the _default properties_. The default properties represent the most commonly-used properties for a resource. On the other hand, Azure AD Graph returns the full set of all properties for the respective resource.

To get other properties in v1.0, your app needs to explicitly request them, using the `$select` query parameter. This includes any directory schema extensions your app might be using. It's a best practice to only request the properties your app really needs.

To illustrate the difference, use Graph Explorer to run the following requests and compare the different responses.

```http
GET https://graph.microsoft.com/v1.0/me/
GET https://graph.microsoft.com/beta/me/
```

Review the responses from each query. You'll notice that address information is returned by the /beta version, but not the /v1.0 version.  That's because the address properties aren't in the default property set.

If your app relies on the address properties, you need to update your v1.0 requests to include the `$select` query parameter:

```http
https://graph.microsoft.com/v1.0/me/?$select=displayName,streetAddress,city,state,postalCode
```

The response for this request would include the address properties.  It also includes the **displayName** property, but only because it was specified by the query parameter.

To learn more about:

- Default properties on user, see [users](/graph/api/resources/users?view=graph-rest-1.0)
- The `$select` parameter and other supported ODATA query parameters, see [Use query parameters to customize responses](./query-parameters.md).
- This and other recommended optimizations, see [Best practices](./best-practices-concept.md).

## Relationships and navigation properties

Relationships (or navigation properties) are a key concept in Azure AD Graph and Microsoft Graph, creating a network of related resources. For example, the **manager** and **directReports** properties extend the user resource to provide organizational hierarchy.

Relationships also define memberships, such as the groups a user belongs to, the members belonging to a group or a directory role, and so on.

Azure AD Graph requests use `$link` to indicate relationships between resources.  In Microsoft Graph this uses the ODATA 4.01 `$ref` notation instead.

The following table shows several examples:

| Task | Azure AD Graph | Microsoft Graph |
|------|----------------|-----------------|
| Add member        | ```POST /groups/{id}/$link/members```        | ```POST /groups/{id}/members/$ref```        |
| List member links | ```GET /groups/{id}/$link/members```         | ```GET /groups/{id}/members/$ref```         |
| List members      | ```GET /groups/{id}/members```                | ```GET /groups/{id}/members```               |
| Remove member     | ```DELETE /groups/{id}/$link/members/{id}``` | ```DELETE /groups/{id}/members/{id}/$ref``` |

When migrating your apps to Microsoft Graph, look for requests that use `$link` to associate resources; change these to use `$ref` instead.

## Next Steps

- Learn about [service feature differences](migrate-azure-ad-graph-feature-differences.md) between Azure AD Graph and Microsoft Graph.
- Review the [checklist](migrate-azure-ad-graph-planning-checklist.md) again.