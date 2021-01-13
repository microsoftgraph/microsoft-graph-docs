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
At the time of first release in 2014, Office Graph was a backend service for Delve. They shared a set of privacy controls over both the Office Graph insights and the Delve user experience. Office Graph has since evolved and become more independent and powerful, as part of every Microsoft 365 experience and of Microsoft Graph. To offer a coherent Microsoft Graph schema, Microsoft introduced an [itemInsights](/graph/api/resources/iteminsights?view=graph-rest-beta&preserve-view=true) entity which inherits all the properties of the pre-existing [officeGraphInsights](/graph/api/resources/officegraphinsights?view=graph-rest-beta&preserve-view=true) resource, and has kept **officeGraphInsights** around for backward compatibility. The introduction of **itemInsights** also de-couples the privacy story for the two independent pieces.  

While existing apps could continue to use **officeGraphInsights**, these apps should upgrade to **itemInsights** to gain the flexibility to fine-tune item insights in Office Graph and Delve.

## How to customize item insights?

Item insights settings provide flexibility for administrators to use Azure AD tools. Administrators can disable item insights for an entire organization, or for only members of a specified Azure AD group. Configure item insights by using the PowerShell SDK or Microsoft Graph REST API with due permissions. Keep in mind that the _global administrator role_ is required. 

The next section describes using PowerShell cmdlets to configure insights settings. If you're using the REST API, skip the next section and continue with [Configure item insights using REST API](#configure-item-insights-using-rest-api). Then refer to the [read](/graph/api/iteminsightssettings-get?view=graph-rest-beta&preserve-view=true) or [update](/graph/api/iteminsightssettings-update?view=graph-rest-beta&preserve-view=true) REST operations for more information.

### How to configure item insights setting via PowerShell?
Confirm the following additional prerequisites. Then you can use the [Microsoft Graph PowerShell SDK](/graph/powershell/installation) to set item insights for an entire organization or for specific groups.

#### Additional prerequisites
* **PowerShell module** - Install [module version 0.9.1 or higher](https://www.powershellgallery.com/packages/Microsoft.Graph).
* **.NET Framework** - Install [.NET Framework 4.7.2](https://dotnet.microsoft.com/download/dotnet-framework) or a higher version.

#### Command examples
To get item insights configuration for an organization, use the Microsoft Graph PowerShell module and the following command, where you replace `$OrgID` with your applicable ID organization:
```powershell
   Get-MgOrganizationSettingItemInsight -OrganizationId $OrgID
```

By default, item insights are enabled for the entire organization. You can use the Microsoft Graph PowerShell module  to change that and disable item insights for everyone in the organization. Use the following command, where you replace `$OrgID` with your organization ID and specify `-IsEnabledInOrganization` as `false` :
```powershell
   Update-MgOrganizationSettingItemInsight -OrganizationId $OrgID -IsEnabledInOrganization:$false
```
Alternatively, you can change the default and disable item insights for a specific Azure AD group. Use the following command, where you replace `$OrgID` with your organization ID, and `$GroupID` with the Azure AD group ID:
```powershell
   Update-MgOrganizationSettingItemInsight -OrganizationId $OrgID -DisabledForGroup $GroupId
```

#### Using earlier versions of the PowerShell module

If you use Microsoft Graph PowerShell module version 0.9.0 or lower, use one of two ways to call the `Update-MgOrganizationSettingItemInsight` cmdlet, as shown in the following examples: 

- Add `-AdditionalProperties @{}` to the end of command:
  ```powershell
  Update-MgOrganizationSettingItemInsight -OrganizationId $OrgID -DisabledForGroup 28f9ceac-39aa-4829-9a67-b8f1db11eaa1 -AdditionalProperties @{}
  ```
- Or, use `-BodyParameter`: 
  ```powershell
  Update-MgOrganizationSettingItemInsight -OrganizationId $OrgID -BodyParameter @{DisabledForGroup = "85f741b4-e924-41a8-abf8-d61a7b950bb5"; IsEnabledInOrganization = $false}
  ```

### Configure item insights using REST API
As stated earlier, by default, item insights privacy settings are enabled for the entire organization. You can change the default in one of two ways:

- Disable item insights for all users in the organization, by setting the **isEnabledInOrganization** property of the [itemInsightsSettings](/graph/api/resources/iteminsightssettings?view=graph-rest-beta&preserve-view=true) resource to `false`. 
- Disable item insights for a _subset_ of users, by assigning these users in an Azure AD group, and setting the **disabledForGroup** property to the ID of that group. Find out more about [creating a group and adding users as members](/azure/active-directory/fundamentals/active-directory-groups-create-azure-portal). 

Use the [update](/graph/api/iteminsightssettings-update?view=graph-rest-beta&preserve-view=true) operation to set the **isEnabledInOrganization** and **disabledForGroup** properties accordingly.

| How item insights are enabled | isEnabledInOrganization | disabledForGroup |
|:-------------|:------------|:------------|
| Entire organization (default) | `true` | empty |
| Disabled for a subset of users in the organization | `true` | ID of the Azure AD group which contains the subset of users |
| Disabled for the entire organization | `false` | ignored |

Keep the following in mind when updating item insights settings:
- [Item insights settings](/graph/api/resources/iteminsightssettings?view=graph-rest-beta&preserve-view=true) are available only in the beta endpoint.
- Get the ID of an Azure AD group from the Azure portal, and make sure the group exists, because the update operation does not check the existence of the group. Specifying a non-existent group in **disabledForGroup** does _not_ disable insights for any users in the organization.
- Updating settings can take up to 8 hours to be applied across all Microsoft 365 experiences.
- Regardless of item insights settings, Delve continues to respect Delve tenant and user level [privacy settings](/sharepoint/delve-for-office-365-admins#control-access-to-delve-and-related-features?view=graph-rest-beta&preserve-view=true).


## Behavior changes in UI and APIs
Some [trending](/graph/api/resources/insights-trending) or [used](/graph/api/resources/insights-used) insights may be affected as described below. Over time, the scope and types of these insights will be extended. 

- The profile card of a user who has disabled item insights does not show their **used** documents. The same limitation applies to the profile result of Microsoft Search in Bing, where the **Recent Files** panel becomes empty. Furthermore, the precision of acronym-expansion in search is reduced.

- Disabling item insights will stop [suggested meeting hours](https://support.microsoft.com/office/update-your-meeting-hours-using-the-profile-card-0613d113-d7c1-4faa-bb11-c8ba30a78ef1?ui=en-US&rs=en-US&ad=US) from being calculated and shown to the user on their profile card. 

- In Delve, a user who has disabled item insights has their documents hidden. 

- Any user who disables item insights has their activity removed from organization-wide analytics. Normally such analytics suggests assistive insights to the user's colleagues across a multitude of experiences, ranging from Outlook to OneDrive and SharePoint. The analytics is always anonymous regardless of settings, but when a user disables insights, the user's activity is excluded from improving the productivity of others.

- For a user who has disabled item insights, querying the [trending](/graph/api/resources/insights-trending) and [used](/graph/api/resources/insights-used) resources in Microsoft Graph API return `HTTP 403 Forbidden`.

- Where the **Discover** section is enabled for a user searching in Outlook mobile, disabling item insights for that user would hide documents in the **Discover** section, that are trending around the user. Trending documents are otherwise recommended and displayed based on other activities of the user.


## Transition period
To accommodate configuring item insights settings, through the end of 2020, Microsoft 365 respects both Delve settings and item insights settings, and enforces the stricter of the two if they differ. This means that a user is considered as opted out of item insights if the user has opted out by either Delve controls or item insights settings.

After this transition period, Delve settings control only Delve experience, and item insights settings affect only Microsoft Graph item insights. Make sure to configure item insights according to your organization's requirements.


> [!NOTE]
> During the transition period, due to technical reasons, the SharePoint start page may provide stale suggestions if an organization disables item insights for all users. This issue will be addressed in upcoming server-side changes. 

## See also
Learn more about Delve and using Delve feature settings to control documents showing up in the **Discover** feed: 
- [Connect and collaborate in Office Delve](https://support.microsoft.com/office/connect-and-collaborate-in-office-delve-46f92806-b52c-4187-b60e-b3bf8d25f73e)
- [Are my documents safe in Office Delve?](https://support.microsoft.com/office/are-my-documents-safe-in-office-delve-f5f409a2-37ed-4452-8f61-681e5e1836f3)
- [Delve for admins](/sharepoint/delve-for-office-365-admins)
