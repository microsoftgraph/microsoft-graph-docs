---
title: "Customizing item insights privacy in Microsoft Graph"
description: ""
author: "simonhult"
localization_priority: Priority
ms.prod: "insights"
ms.custom: scenarios:getting-started
---

# Customizing item insights privacy in Microsoft Graph (preview)

Item insights privacy settings provide the ability to configure the visibility of insights derived from Microsoft Graph, between users and other items (such as documents or sites) in Microsoft 365. You can disable the Delve app via the pre-existing controls, but allow other insights-based experiences to continue to provide assistance.

## Background
At the time of first release in 2014, Office Graph was a backend service for Delve. They shared a set of privacy controls over both the Office Graph insights and the Delve user experience. Office Graph has since evolved and become more independent and powerful, as part of every Microsoft 365 experience and of Microsoft Graph. To offer a coherent Microsoft Graph schema, Microsoft introduced an [itemInsights](/graph/api/resources/itemInsights?view=graph-rest-beta) entity which inherits all the properties of the pre-existing [officeGraphInsights](/graph/api/resources/officegraphinsights?view=graph-rest-beta) resource, and has kept **officeGraphInsights** around for backward compatibility. The introduction of **itemInsights** also de-couples the privacy story for the two independent pieces.  

While existing apps could continue to use **officeGraphInsights**, these apps should upgrade to **itemInsights** to gain the flexibility to fine-tune item insights in Office Graph and Delve.

## How to customize item insights?
By default, item insights are enabled for an organization. To disable item insights for all users in the organization, set the **isEnabledInOrganization** property to `false`. To disable item insights for a _subset_ of users in an Azure AD group, set the **disabledForGroup** property to the ID of that group; find out more about [creating a group and adding users as members](/azure/active-directory/fundamentals/active-directory-groups-create-azure-portal). 

These settings provide flexibility for administrators to use Azure AD tools and disable item insights for only members of the specified group and not necessarily across the organization. Configure each of these properties by [updating item insights settings](/graph/api/iteminsightssettings-update?view=graph-rest-beta) in an app, PowerShell, or other applications with due permissions.

Keep in mind that the _global administrator role_ is required to read or update these settings. 

### Available configurations
Configure item insights settings for users in an organization by [updating](/graph/api/iteminsightssettings-update?view=graph-rest-beta) the **isEnabledInOrganization** and **disabledForGroup** properties accordingly.

| How item insights are enabled | isEnabledInOrganization | disabledForGroup |
|:-------------|:------------|:------------|
| Entire organization (default) | `true` | empty |
| Disabled for a subset of users in the organization | `true` | ID of the Azure AD group which contains the subset of users |
| Disabled for the entire organization | `false` | ignored |

Keep the following in mind when updating item insights settings:
- The item insights privacy settings (**itemInsightsSettings** resource) are available only in the beta endpoint.
- Get the ID of an Azure AD group from the Azure portal, and make sure the group exists, because the update operation does not check the existence of the group. Specifying a non-existent group in **disabledForGroup** does _not_ disable insights for any users in the organization.
- Updating settings can take up to 8 hours to be applied across all Microsoft 365 experiences.
- Regardless of item insights settings, Delve continues to respect Delve tenant and user level [privacy settings](/sharepoint/delve-for-office-365-admins#control-access-to-delve-and-related-features?view=graph-rest-beta).


## Behavior changes in UI and APIs
Some [trending](/graph/api/resources/insights-trending) or [used](/graph/api/resources/insights-used) insights may be affected as described below. Over time, the scope and types of these insights will be extended. 

- The profile card of a user who has disabled item insights does not show their **used** documents. The same limitation applies to the profile result of Microsoft Search in Bing, where the **Recent Files** panel becomes empty. Furthermore, the precision of acronym-expansion in search is reduced.

- In Delve, a user who has disabled item insights has their documents hidden. 

- Any user who disables item insights has their activity removed from organization-wide analytics. Normally such analytics suggests assistive insights to the user's colleagues across a multitude of experiences, ranging from Outlook to OneDrive and SharePoint. The analytics is always anonymous regardless of settings, but when a user disables insights, the user's activity is excluded from improving the productivity of others.

- For a user who has disabled item insights, querying the [trending](/graph/api/resources/insights-trending) and [used](/graph/api/resources/insights-used) resources in Microsoft Graph API return `HTTP 403 Forbidden`.


## Transition period
To accommodate configuring item insights settings, through the end of 2020, Microsoft 365 respects both Delve settings and item insights settings, and enforces the stricter of the two if they differ. This means that a user is considered as opted out of item insights if the user has opted out by either Delve controls or item insights settings.

After this transition period, Delve settings control only Delve experience, and item insights settings affect only Microsoft Graph item insights. Make sure to configure item insights according to your organization's requirements.


> [!NOTE]
> During the transition period, due to technical reasons, the SharePoint start page may provide stale suggestions if an organization disables item insights for all users. This issue will be addressed in upcoming server-side changes. 
