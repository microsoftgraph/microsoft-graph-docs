---
title: "Microsoft Graph reports API overview"
description: "The reports API in Microsoft Graph enables understanding of application and tenant resource activity."
localization_priority: Priority
ms.prod: "reports"
author: "pranoychaudhuri"
ms.custom: scenarios:getting-started
---

# Microsoft Graph reports API overview

The reports API in Microsoft Graph enable you to understand application and resource activity in your Azure Active Directory tenant.

> [!VIDEO https://www.youtube-nocookie.com/embed/P6HneRXYdx8]

## Why use the reports API?

### Integrate Microsoft 365 usage reporting into your organization's existing reporting solution
Many companies have existing reporting solutions that use a reporting application or web portal. You can use the reports API to incorporate Microsoft 365 usage data into your organization's existing reporting solution so that all IT service reports are in a unified location.

### Retain usage reports for historical analysis
You can use the reports API to get the data that's available in all usage reports, including organization-level summaries per service, entity-level (user, sites, accounts) usage information for the last 7/30/90/180 days, and daily activity aggregates. This gives you the option to keep historical usage information for as long as required.

### Analize AD FS application activity and configuration
Provides information about a relying party configured with Active Directory Federation Services (AD FS), its aggregated usage, and whether the relying party configuration can be migrated to Azure Active Directory.

### Monitor application sign-ins

Monitor the usage of your applications and make decisions about usage patterns.

### Determine who is using your applications and how are they using them

The authentication methods usage reports help you understand how users in your organization use Azure Active Directory (Azure AD) capabilities, such as self-service password rest and multi-factor authentication (MFA). These reports help you determine which authentication methods are more successful for your organization, what types of errors end users are running into, and hat campaign you need to run to help your end users adopt the use of self-service password rest and MFA.

### Monitor activity on an Azure AD tenant

Gain a better understanding of how your users access and use Azure AD services. You can analyze the data to create custom solutions tailored to your organization's specific needs.

## What data can I access by using the reports APIs?

You can use the reports APIs to access the data sets listed in the following table.

| Reports APIs | Data set |
|:------------ |:-------- |
|:------------ |:-------- |
| Activity | [Directory audit](/graph/api/resources/directoryaudit?view=graph-rest-1.0)<br/>[Sign-in](/graph/api/resources/signin?view=graph-rest-1.0)<br/>[Provisioning (Preview)](/graph/api/resources/provisioningobjectsummary?view=graph-rest-beta) |
| AD FS applications | [Relying part detailed summary (Preview)](/graph/api/resources/relyingpartydetailedsummary?view=graph-rest-beta) |
| Application registration | [Credential user registration count (Preview)](/graph/api/resources/credentialuserregistrationcount?view=graph-rest-beta)<br/>[Credential user registration details (Preview)](/graph/api/resources/credentialuserregistrationdetails?view=graph-rest-beta) <br/>[User credential usage details (Preview)](/graph/api/resources/usercredentialusagedetails?view=graph-rest-beta) <br/>[Credential usage summary (Preview)](/graph/api/resources/credentialusagesummary?view=graph-rest-beta)|
| Application sign-in | [Sign-in summary (Preview)](/graph/api/resources/applicationsigninsummary?view=graph-rest-beta) <br/>[Sign-in details (Preview)](/graph/api/resources/applicationsignindetailedsummary?view=graph-rest-beta)|
| Microsoft Teams | [Device usage](/graph/api/resources/microsoft-teams-device-usage-reports?view=graph-rest-1.0)<br/>[User activity](/graph/api/resources/microsoft-teams-user-activity-reports?view=graph-rest-1.0) |
| Microsoft 365 (general) | [Activations](/graph/api/resources/office-365-activations-reports?view=graph-rest-1.0)<br/>[Active users](/graph/api/resources/office-365-active-users-reports?view=graph-rest-1.0)<br/>[Groups activity](/graph/api/resources/office-365-groups-activity-reports?view=graph-rest-1.0) |
| OneDrive | [Activity](/graph/api/resources/onedrive-activity-reports?view=graph-rest-1.0)<br/>[Usage](/graph/api/resources/onedrive-usage-reports?view=graph-rest-1.0) |
| Outlook | [Activity](/graph/api/resources/email-activity-reports?view=graph-rest-1.0)<br/>[App usage](/graph/api/resources/email-app-usage-reports?view=graph-rest-1.0)<br/>[Mailbox usage](/graph/api/resources/mailbox-usage-reports?view=graph-rest-1.0) |
| SharePoint | [Activity](/graph/api/resources/sharepoint-activity-reports?view=graph-rest-1.0)<br/>[Site usage](/graph/api/resources/sharepoint-site-usage-reports?view=graph-rest-1.0) |
| Skype for Business | [Activity](/graph/api/resources/skype-for-business-activity-reports?view=graph-rest-1.0)<br/>[Device usage](/graph/api/resources/skype-for-business-device-usage-reports?view=graph-rest-1.0)<br/>[Device usage](/graph/api/resources/skype-for-business-device-usage-reports?view=graph-rest-1.0)<br/>[Participant activity](/graph/api/resources/skype-for-business-participant-activity-reports?view=graph-rest-1.0)<br/>[Peer to peer activity](/graph/api/resources/skype-for-business-peer-to-peer-activity?view=graph-rest-1.0) |
| Yammer | [Activity](/graph/api/resources/yammer-activity-reports?view=graph-rest-1.0)<br/>[Device usage](/graph/api/resources/yammer-device-usage-reports?view=graph-rest-1.0)<br/>[Groups activity](/graph/api/resources/yammer-groups-activity-reports?view=graph-rest-1.0) |

## API reference
Looking for the API reference for this service?

- [Identity and access retports API in Microsoft Graph beta](/graph/api/resources/report-identity-access?view=graph-rest-beta)
- [Microsoft 365 usage reports API in Microsoft Graph v1.0](/graph/api/resources/report?view=graph-rest-1.0)
- [Microsoft 365 usage reports API in Microsoft Graph beta](/graph/api/resources/report?view=graph-rest-beta)

## Next steps

* Explore the APIs in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
* Learn more about how to [use the reports REST API](/graph/api/resources/report?view=graph-rest-1.0).
