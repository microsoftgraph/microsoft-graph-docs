---
title: "Microsoft 365 Lighthouse API overview"
description: "Microsoft 365 Lighthouse is an admin portal that helps Managed Service Providers (MSPs) secure and manage devices, data, and users at scale for small- and medium-sized business (SMB) customers who are using Microsoft 365 Business Premium."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
---

# Overview for multi-tenant management using the Microsoft 365 Lighthouse API

Microsoft 365 Lighthouse is an admin portal that lets Managed Service Providers (MSPs) remotely manage multiple customer tenants. It helps MSPs secure and manage devices, data, and users at scale for small- and medium-sized business (SMB) customers who are using Microsoft 365 Business Premium.

Microsoft 365 Lighthouse helps MSPs simplify onboarding of Microsoft 365 Business Premium customer tenants. It offers an MSP the convenience of multi-tenant views across all its customer tenant environments. It can recommend security configuration baselines tailored to the MSP's SMB customers. With Microsoft 365 Lighthouse, MSPs can scale the management of their customer tenants, focus on what's most important, quickly find and investigate risks, and take action to help get their customer tenants to a healthy and secure state.

> [!NOTE]  
> This documentation is about the Microsoft 365 Lighthouse API available on _Microsoft Graph_. A similar offering, Azure Lighthouse, helps service providers deliver managed services for Azure services by using comprehensive and robust management tooling built into the _Azure_ platform. To learn more, see [What is Azure Lighthouse](/azure/lighthouse/overview).

## Why integrate with Microsoft 365 Lighthouse?

As an MSP, you can use the Microsoft 365 Lighthouse API in Microsoft Graph to gain insights into identified risks and take action to help get your customers into a healthy and secure state.

### Devices

You can use the Lighthouse API to perform the following device tasks:

- Analyze [device compliance trends](/graph/api/resources/managedtenants-manageddevicecompliancetrend?view=graph-rest-beta&preserve-view=true) to better understand how device compliance is evolving over time for your customers.
- Understand what [device compliance policies](/graph/api/resources/managedtenants-manageddevicecompliance) have been created across your customers and the status of the policies.

### Threat management

You can use the Lighthouse API to perform the following threat management tasks:

- Gain insight to the state of [malware](/graph/api/resources/managedtenants-windowsdevicemalwarestate) that is present on the Windows devices registered for management across your customers.
- View the [protection state](/graph/api/resources/managedtenants-windowsprotectionstate?view=graph-rest-beta&preserve-view=true) for Windows devices registered for management across your customers to ensure those using Windows Defender are in a healthy state.

### Users

You can use the Lighthouse API to perform the following user tasks:

- Discover [risky users](/graph/api/resources/managedtenants-riskyuser?view=graph-rest-beta&preserve-view=true) across your customers.
- View [credential user registration summary](/graph/api/resources/managedtenants-credentialuserregistrationssummary?view=graph-rest-beta&preserve-view=true) to understand what users across your customers have registered for multi-factor authentication and self-service password reset.

## API reference

Looking for the API reference for this service?

See [Microsoft 365 Lighthouse API in Microsoft Graph (preview)](/graph/api/resources/managedtenants-managedtenant?view=graph-rest-beta&preserve-view=true).

> [!NOTE]
> The Microsoft 365 Lighthouse API is defined in the OData subnamespace, `microsoft.graph.managedTenants`.


## Next steps

- Learn more about the [Microsoft 365 Lighthouse](/microsoft-365/lighthouse/m365-lighthouse-overview?view=o365-worldwide&preserve-view=true) portal.
- Find out about the [latest new features and updates](/graph/whats-new-overview) for the Lighthouse API.
- Explore [examples](https://developer.microsoft.com/graph/graph/examples) for more ideas about how to use Microsoft Graph.
