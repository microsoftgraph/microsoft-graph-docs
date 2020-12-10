---
title: "Activity reports API overview"
description: "Use the activity reports API in Microsoft Graph to access the reports that Azure Active Directory creates to help you track user activity in a tenant."
localization_priority: Priority
author: "besiler"
ms.prod: "microsoft-identity-platform"
doc_type: conceptualPageType
---

# Activity reports API overview

Namespace: microsoft.graph

Azure Active Directory (Azure AD) tracks user activity and creates reports that help you understand how your users access and use Azure AD services. Use the Microsoft Graph API for Azure AD to analyze the data in these reports and to create custom solutions tailored to your organization's specific needs.

The availability of these activity reports is governed by the Azure AD data retention policies. For more information, see [data retention policies](https://docs.microsoft.com/azure/active-directory/reports-monitoring/reference-reports-data-retention#how-long-does-azure-ad-store-the-data).

## What are Azure AD activity logs?

Azure AD provides the following types of activity reports:

- Directory audits
- Sign-ins

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

## What can I do with audit log APIs in Microsoft Graph?

The following are popular requests for working with audit log data:

Operation | URL
:----------|:----
GET tenant user activities | [GET https://graph.microsoft.com/v1.0/auditLogs/directoryAudits](https://developer.microsoft.com/graph/graph-explorer?request=auditLogs/directoryAudits&version=v1.0)
GET tenant user sign-ins | [GET https://graph.microsoft.com/v1.0/auditLogs/signIns](https://developer.microsoft.com/graph/graph-explorer?request=auditLogs/signIns&version=v1.0)

## What licenses do I need?

Activity reports are available for features that you've licensed. If you have a license for a specific feature, you also have access to the reports.

For example, you need an Azure AD Premium P1 license to access self-service password audit reports.  To learn more, see [Azure AD licensing](https://azure.microsoft.com/pricing/details/active-directory/).

Sign-in reports require an Azure AD Premium license.

To learn more, see [Azure AD pricing](https://azure.microsoft.com/pricing/details/active-directory/).

## Next Steps

- [Register your app](/azure/active-directory/active-directory-reporting-api-prerequisites-azure-portal) to satisfy report prerequisites. 
- Learn from [audit log](/azure/active-directory/active-directory-reporting-api-audit-samples) and [sign-in samples](/azure/active-directory/active-directory-reporting-api-sign-in-activity-samples).  
- Review [directoryAudit](directoryaudit.md) resource and actions.
- Review [signIn](signin.md) resource and actions. 
<!--
{
  "type": "#page.annotation",
  "suppressions": [
    "Error: /api-reference/beta/resources/azure-ad-auditlog-overview.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
