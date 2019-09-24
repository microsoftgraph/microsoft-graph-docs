---
title: "Azure AD audit log API overview"
description: "Azure Active Directory (Azure AD) tracks user activity and sign-in metrics and creates audit log reports that help you understand how your users access and use Azure AD services. Use the Microsoft Graph API for Azure AD to analyze the data underlying these reports and to create custom solutions tailored to your organization's specific needs."
localization_priority: Priority
doc_type: conceptualPageType
ms.prod: ""
author: ""
---

# Azure AD audit log API overview

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Azure Active Directory (Azure AD) tracks user activity and sign-in metrics and creates audit log reports that help you understand how your users access and use Azure AD services. Use the Microsoft Graph API for Azure AD to analyze the data underlying these reports and to create custom solutions tailored to your organization's specific needs.

## What are Azure AD activity logs?

Azure AD provides three types of activity logs:

- Audit logs 
- Sign-in logs
- Provisioning logs

### Audit logs

The audit logs activity report provides you with access to the history of every task performed in your tenant. The audit logs report provides you with records of system activities for compliance. Amongst others, the provided data enables you to address common scenarios such as:

- Who granted admin group access to a directory user?

- Which users are signing in to a recently acquired app?

- How many passwords resets were made within the directory?

### Sign-in logs

The sign-ins activity report helps you determine who performed the tasks reported by audit log reports. The sign-ins activity report helps you answer questions like:

- What is the sign in pattern of a user?
- How many users have signed in during the last week?
- What's the status of these sign-ins?

### Provisioning logs
The provisioning logs help you see all the actions performed by the Azure AD provisioning service. The provisioning logs help you answer questions like:

- What groups were successfully created in ServiceNow?
- What roles were imported from Amazon Web Services?
- What users were unsuccessfully created from Workday?

## What can I do with audit log APIs in Microsoft Graph?

Here are popular requests for working with audit log data:

Operation | URL
:----------|:----
GET tenant user activities | [https://graph.microsoft.com/beta/auditLogs/directoryAudits](https://developer.microsoft.com/graph/graph-explorer?request=auditLogs/directoryAudits&version=beta)
GET tenant user sign-ins | [https://graph.microsoft.com/beta/auditLogs/signIns](https://developer.microsoft.com/graph/graph-explorer?request=auditLogs/signIns&version=beta)
GET provisioning logs | [https://graph.microsoft.com/beta/auditLogs/directoryProvisioning](https://developer.microsoft.com/graph/graph-explorer?request=auditLogs/directoryProvisioning&version=beta)

## What licenses do I need?

Audit log reports are available for features that you've licensed.  If you have a license for a specific feature, you also have access to its audit logs.

For example, you need an Azure AD Premium P1 license to access self-service password audit reports.  To learn more, see [Azure AD licensing](https://azure.microsoft.com/pricing/details/active-directory/).

Sign-in reports require an Azure AD Premium license.

To learn more, see [Azure AD pricing](https://azure.microsoft.com/pricing/details/active-directory/).

## Next steps

- [Register your app](https://docs.microsoft.com/azure/active-directory/active-directory-reporting-api-prerequisites-azure-portal) to satisfy audit log prerequisites. 
- Learn from [audit log](https://docs.microsoft.com/azure/active-directory/active-directory-reporting-api-audit-samples) and [sign-in samples](https://docs.microsoft.com/azure/active-directory/active-directory-reporting-api-sign-in-activity-samples).  
- Review the [directoryAudit](directoryaudit.md) resource and actions.
- Review the [signIn](signin.md) resource and actions. 
- Review the [provisioningObjectSummary](provisioningobjectsummary.md) resource.
