---
title: "Using the Intune Graph API - Microsoft Graph API"
description: "Lists the Microsoft Graph API for Intune endpoints (REST) you can use to manage your tenant organization and its devices, apps, access, and resources."
author: "rolyon"
localization_priority: Priority
ms.prod: "intune"
---

# Working with Intune in Microsoft Graph  

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The Microsoft Graph API for Intune enables programmatic access to Intune information for your tenant; the API performs the same Intune operations as those available through the **Azure Portal**.  

For mobile device management (MDM) scenarios, the Microsoft Graph API for Intune supports standalone deployments; Intune [hybrid deployments](/sccm/mdm/understand/choose-between-standalone-intune-and-hybrid-mobile-device-management) are not supported. 

All Microsoft Graph beta APIs for Intune are tested and validated by the Intune team before they're deployed. For the latest API changes, see the [changelog](/graph/changelog). 

## Using the Microsoft Graph API for Intune

Intune provides data into Microsoft Graph in the same way that other cloud services do, with rich entity information and relationship navigation. Use Microsoft Graph to combine information from other services and Intune to build rich cross-service applications for IT professionals or end users.     

The following example shows how you can determine whether an application is installed on a user's device: 

1. Get from Azure Active Directory a list of devices registered to a user: 

    https://graph.microsoft.com/beta/users/{user}/ownedDevices 

2. Then view the list of applications for your tenant: 

    https://graph.microsoft.com/beta/deviceAppManagement/mobileApps  

3. Take the ID from the application and determine the installation state for the application (and therefore user):

    https://graph.microsoft.com/beta/deviceAppManagement/mobileApps/{id}/deviceStatuses/


## Using Microsoft Graph permissions

Microsoft Graph controls access to resources via permissions. As a developer, you must specify the permissions you need to access Intune resources. Typically, you specify the permissions in the Azure Active Directory portal. For more information, see [Microsoft Graph permissions reference](/graph/permissions-reference).

## What's new
Find out about the [latest new features and updates](/graph/whats-new-overview) for this API set.

## Next Steps

- Learn [how to use Azure AD](/intune/intune-graph-apis) to access the Microsoft Graph API for Intune.  
- Explore the [PowerShell Intune samples](https://github.com/microsoftgraph/powershell-intune-samples), which show how to use the Microsoft Graph API for Intune in context of working examples.
