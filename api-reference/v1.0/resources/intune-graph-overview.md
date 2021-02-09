---
title: "Using the Intune Graph API"
description: " Intune hybrid deployments are not supported. "
author: "dougeby"
localization_priority: Priority
ms.prod: "intune"
doc_type: conceptualPageType
---

# Working with Intune in Microsoft Graph  

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://www.microsoft.com/cloud-platform/microsoft-intune-pricing) by the customer.

The Microsoft Graph API for Intune enables programmatic access to Intune information for your tenant; the API performs the same Intune operations as those available through the **Azure Portal**.  

For mobile device management (MDM) scenarios, the Microsoft Graph API for Intune supports standalone deployments; Intune [hybrid deployments](/sccm/mdm/understand/choose-between-standalone-intune-and-hybrid-mobile-device-management) are not supported. 

## Using the Microsoft Graph API for Intune

Intune provides data into the Microsoft Graph API in the same way as other cloud services do, with rich entity information and relationship navigation. Use the Microsoft Graph API to combine information from other services and Intune to build rich cross-service applications for IT professionals or end users.     

The following example shows how you can determine whether an application is installed on a user's device: 

1. Get from Azure Active Directory a list of devices registered to a user: 

    https://graph.microsoft.com/users/{user}/ownedDevices 

2. Then view the list of applications for your tenant: 

    https://graph.microsoft.com/deviceAppManagement/mobileApps  

3. Take the ID from the application and determine the installation state for the application (and therefore user):

    https://graph.microsoft.com/deviceAppManagement/mobileApps/{id}/deviceStatuses/

## Accessing the Microsoft Graph API for Intune

Intune supports both [delegated permissions](/graph/auth-v2-user) and [application permissions](/graph/auth-v2-service). Delegated and application permissions support both read and write operations. Delegated and application permissions support both single tenant applications, as well as multi-tenant applications. For more information about the permissions available through Microsoft Graph, see [Microsoft Graph permissions reference](/graph/permissions-reference).

## Using permissions

The Microsoft Graph API controls access to resources via permissions. As a developer, you must specify the permissions you need to access Intune resources. Typically, you specify the permissions in the Azure Active Directory portal. For more information, see [Microsoft Graph permissions reference](/graph/permissions-reference).

## What's new
Find out about the [latest new features and updates](/graph/whats-new-overview) for this API set.

## Next Steps

- Learn [how to use Azure AD](/intune/intune-graph-apis) to access the Microsoft Graph API for Intune.  
- Explore the [PowerShell Intune samples](https://github.com/microsoftgraph/powershell-intune-samples), which show how to use the Microsoft Graph API for Intune in context of working examples.