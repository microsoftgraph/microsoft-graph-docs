---
title: "National cloud deployments"
description: "In addition to our global network of datacenters, Microsoft cloud services are available in three separate national clouds."
author: "arpitha-dhanapathi"
---

# National cloud deployments

In addition to our global network of datacenters, Microsoft cloud services are available in three separate national clouds. These national cloud versions are physical and logical network-isolated instances of Microsoft enterprise cloud services that are confined within the geographic borders of specific countries and operated by local personnel.

Current national clouds include:

- Microsoft Cloud for US Government
- Microsoft Cloud Germany
- Azure and Microsoft 365 operated by 21Vianet in China

Each national cloud environment is unique and different than the Microsoft global environment. It is important to be aware of some of these key differences when you develop applications for national cloud environments; for example, registering applications, acquiring tokens, and calling the Microsoft Graph API can be different.

This article provides information about the different Microsoft Graph national cloud deployments and the capabilities that are available to developers within each.

>**Note:** [Microsoft Graph data connect](./data-connect-concept-overview.md?view=graph-rest-1.0) does not support any of the national cloud deployments. 

> [!VIDEO https://www.youtube-nocookie.com/embed/R_3E0IVypRM]

## App registration and token service root endpoints

Before calling the Microsoft Graph APIs, you should first register your application and acquire a token. The following table lists the base URLs for the Azure Active Directory (Azure AD) endpoints to register your application and acquire tokens for each national cloud.

| National cloud | Azure AD portal endpoint| Azure AD endpoint|
|---------------------------|----------------|----------------|
|Azure AD (global service)|https://portal.azure.com |`https://login.microsoftonline.com`|
|Azure AD for US Government |https://portal.azure.us|`https://login.microsoftonline.us`|
|Azure AD Germany |https://portal.microsoftazure.de|`https://login.microsoftonline.de`|
|Azure AD China operated by 21Vianet |https://portal.azure.cn|`https://login.chinacloudapi.cn`|

To learn more about Azure AD access tokens and Microsoft Graph, see [authentication basics](./auth/auth-concepts.md). For Azure AD authentication scenarios, see [Azure AD authentication basics](/azure/active-directory/develop/authentication-scenarios).


## Microsoft Graph and Graph Explorer service root endpoints

The following table shows the service root endpoints for Microsoft Graph and [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer) for each national cloud.

| National Cloud | Microsoft Graph | Graph Explorer |
|---------------------------|----------------|----------------|
| Microsoft Graph global service | https://graph.microsoft.com | https://developer.microsoft.com/graph/graph-explorer |
| Microsoft Graph for US Government L4 | https://graph.microsoft.us | Not supported. |
| Microsoft Graph for US Government L5 (DOD) | https://dod-graph.microsoft.us | Not supported. |
| Microsoft Graph Germany | https://graph.microsoft.de | Not supported. |
| Microsoft Graph China operated by 21Vianet | https://microsoftgraph.chinacloudapi.cn | https://developer.microsoft.com/zh-cn/graph/graph-explorer-china |

> [!IMPORTANT]
> For an app in US Government:
>
> - If you're working in a Microsoft 365 GCC environment, continue using the worldwide endpoints: `https://graph.microsoft.com` and `https://portal.azure.com`.
> - If you're working in a Microsoft 365 GCC High environment, use: `https://portal.azure.us` and `https://graph.microsoft.us`.
> - If you're working in a Microsoft 365 DoD environment, use `https://portal.azure.us` and `https://dod-graph.microsoft.us`.
>
> Access to US Government data using the worldwide endpoint will be disabled in the near future.

> [!NOTE]
> Apps can only access organizational data through the national cloud endpoints. This means that apps can only access data in tenants that are registered in the specific national cloud. Apps that are trying to access consumer data associated with Microsoft personal accounts through Microsoft Graph should use the global service `https://graph.microsoft.com`. Access tokens acquired for a national cloud deployment are not interchangeable with those acquired for the global service or any other national cloud.

## Supported features

The following Microsoft Graph features are generally available on the `/v1.0` endpoint across all national cloud deployments, except where noted.

| Microsoft Graph features | Microsoft Cloud for US Government | Microsoft Cloud China operated by 21Vianet | Microsoft Cloud Germany |
|---------------------------|----------------|----------------|----------------|
| Users | ✔ | ✔ | ✔ |
| Groups | ✔ | ✔ | ✔ |
| Excel | ✔| ✔* | ✔ |
| OneDrive | ✔ | ✔* | ✔ |
| Outlook Mail | ✔ | ✔ | ✔ |
| Outlook Calendar | ✔ | ✔ | ✔ |
| Personal Contacts | ✔ | ✔ | ✔ |
| Security | ✔ | ✔ | ✔ |
| SharePoint| ✔ | ✔ | ✔ |
| Teams | ✔ | ✔ | ✔ |
| Planner|✔ |✔ |✔ |
| Reports  |➖| ✔ |➖|
| Organizational contacts  |✔| ➖ |➖|
| Applications  |✔| ➖ |➖|
| Service principals  |✔| ➖ |➖|
| Change notifications (webhooks)  | ✔ |✔ |✔* |
| Delta query | ✔ | ✔ | ➖ |
| Directory schema extensions |✔|➖|➖|
| Open type extensions|➖|➖|➖|
  
The following Microsoft Graph features are available in preview (on the `/beta` endpoint) in Microsoft Cloud China and Microsoft Cloud Germany (V1.0 endpoints for these features are available in Microsoft Cloud for US Government only):

* Organizational contacts
* Applications
* Service principals

(*) Limited support for Exchange and OneDrive services only. Azure AD services are not supported. 

> [!IMPORTANT]
> Certain services and features that are in specific regions of the global service might not be available in all of the national clouds. To find out what services are available, see [products available by region](https://azure.microsoft.com/global-infrastructure/services/?products=all&regions=usgov-non-regional,us-dod-central,us-dod-east,usgov-arizona,usgov-iowa,usgov-texas,usgov-virginia,china-non-regional,china-east,china-east-2,china-north,china-north-2,germany-non-regional,germany-central,germany-northeast).


To learn more about National clouds, see the following topics:
- [Microsoft National Clouds](https://www.microsoft.com/TrustCenter/CloudServices/NationalCloud)
- [Microsoft 365 for US Government](/office365/servicedescriptions/office-365-platform-service-description/office-365-us-government/office-365-us-government)
- [Microsoft 365 operated by 21Vianet](/office365/servicedescriptions/office-365-platform-service-description/office-365-operated-by-21vianet)
- [Office 365 Germany](/office365/servicedescriptions/office-365-platform-service-description/office-365-germany)
- [Azure Government](https://azure.microsoft.com/global-infrastructure/government/)
- [Azure China 21Vianet](/azure/china/)
- [Azure Germany](/azure/germany/)