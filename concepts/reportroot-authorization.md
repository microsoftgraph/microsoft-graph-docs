---
title: "Authorization for APIs to read Microsoft 365 usage reports"
description: "Reports data accessible via the Microsoft Graph reports API is sensitive and protected by both permissions and Azure Active Directory (Azure AD) roles."
author: "kszb"
localization_priority: Priority
ms.prod: "reports"
---

# Authorization for APIs to read Microsoft 365 usage reports

Report data accessible via the Microsoft Graph reports API is sensitive. In particular, Microsoft 365 usage reports are protected by both permissions and Azure Active Directory (Azure AD) roles. The information in this article applies to the reports API that reads Microsoft 365 usage reports.

The APIs to read Microsoft 365 usage reports support two types of authorization:

- **Application-level authorization** - Allows an app to read all service usage reports without a signed-in user. The permissions granted to the application determine authorization.
- **User delegated authorization** - Allows an app to read all service usage reports on behalf of the signed-in user. In addition to the app having been granted the required permissions, the user must be a member of an Azure AD limited administrator role. This can be one of the following roles: company administrator, Exchange administrator, SharePoint administrator, Lync administrator, Teams Service Administrator, Teams Communications Administrator, global reader, or reports reader.

If you're calling the APIs from Graph Explorer:

- The Azure AD tenant administrator must explicitly grant consent for the requested permissions to the Graph Explorer application.
- The user must be a member of a limited administrator role in Azure AD, listed above for user-delegated authorization.

>**Note**: Graph Explorer does not support application-level authorization.

If you're calling the APIs from an application:

- The Azure AD tenant administrator must explicitly grant consent to your application. This is required both for application-level authorization and user delegated authorization.
- If you're using user delegated authorization, the signed-in user must be a member of a limited administrator role in Azure AD.

## Assign Azure AD roles to users

After an application is granted permissions, everyone with access to the application (that is, members of the Azure AD tenant) receives the granted permissions. To further protect sensitive reports data, tenant administrators must assign users of the application the appropriate Azure AD roles. For details, see [Administrator role permissions in Azure Active Directory](/azure/active-directory/active-directory-assign-admin-roles-azure-portal) and [Assign administrator and non-administrator roles to users with Azure Active Directory](/azure/active-directory/active-directory-users-assign-role-azure-portal).

>**Note:** You must be a tenant administrator to perform this step.

To assign a role to a user:

1. Sign in to the [Azure portal](https://portal.azure.com) (https://portal.azure.com).
2. Click the icon in the top left to expand the Azure portal menu. Select **Azure Active Directory** > **Users**.
3. Click the name of the user.
4. Choose **Assigned roles**, and then **Add assignment**.
5. Select the appropriate role, and click **Add**.