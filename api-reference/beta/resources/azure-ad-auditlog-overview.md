---
title: "Activity reports API overview"
description: "Use the activity reports API in Microsoft Graph to access the reports that Azure Active Directory creates to help you track user activity in a tenant."
localization_priority: Priority
doc_type: conceptualPageType
ms.prod: "microsoft-identity-platform"
author: "besiler"
---

# Activity reports API overview

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Azure Active Directory (Azure AD) tracks user activity and creates reports that help you understand how your users access and use Azure AD services. Use the Microsoft Graph API for Azure AD to analyze the data in these reports and to create custom solutions tailored to your organization's specific needs.

The availability of these activity reports is governed by the Azure AD data retention policies. For more information, see [data retention policies](https://docs.microsoft.com/azure/active-directory/reports-monitoring/reference-reports-data-retention#how-long-does-azure-ad-store-the-data).

## What are activity reports?

Azure AD provides three types of activity reports:

- Directory audits 
- Sign-ins
- Provisioning

### Directory audits

The directory audit report provides you with access to the history of every task performed in your tenant. The directory audit report provides you with records of system activities for compliance. Amongst others, the provided data enables you to address common scenarios such as:

- Who granted admin group access to a directory user?
- Which users are signing in to a recently acquired app?
- How many passwords resets were made within the directory?

### Sign-ins

The sign-ins report helps you determine who performed the tasks reported by directory audits. The sign-ins report helps you answer questions like:

- What is the sign in pattern of a user?
- How many users have signed in during the last week?
- What's the status of these sign-ins?

### Provisioning

The provisioning report helps you see all the actions performed by the Azure AD provisioning service. The provisioning report helps you answer questions like:

- What groups were successfully created in ServiceNow?
- What roles were imported from Amazon Web Services?
- What users were unsuccessfully created from Workday?

## What can I do with activity reports in Microsoft Graph?

Here are popular requests for working with report data:

Operation | URL
:----------|:----
GET tenant user activities | [https://graph.microsoft.com/beta/auditLogs/directoryAudits](https://developer.microsoft.com/graph/graph-explorer?request=auditLogs/directoryAudits&version=beta)
GET tenant user sign-ins | [https://graph.microsoft.com/beta/auditLogs/signIns](https://developer.microsoft.com/graph/graph-explorer?request=auditLogs/signIns&version=beta)
GET provisioning logs | [https://graph.microsoft.com/beta/auditLogs/provisioning](https://developer.microsoft.com/graph/graph-explorer?request=auditLogs/Provisioning&version=beta)

## What licenses do I need?

Activity reports are available for features that you've licensed. If you have a license for a specific feature, you also have access to the reports.

For example, you need an Azure AD Premium P1 license to access self-service password audit reports.  To learn more, see [Azure AD licensing](https://azure.microsoft.com/pricing/details/active-directory/).

Sign-in reports require an Azure AD Premium license.

To learn more, see [Azure AD pricing](https://azure.microsoft.com/pricing/details/active-directory/).

## Next steps

- [Register your app](/azure/active-directory/active-directory-reporting-api-prerequisites-azure-portal) to satisfy report prerequisites. 
- Learn from [audit log](/azure/active-directory/active-directory-reporting-api-audit-samples) and [sign-in samples](/azure/active-directory/active-directory-reporting-api-sign-in-activity-samples).  
- Review the [directoryAudit](directoryaudit.md) resource and actions.
- Review the [signIn](signin.md) resource and actions. 
- Review the [provisioningObjectSummary](provisioningobjectsummary.md) resource.