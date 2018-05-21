# Azure AD audit log API overview

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Microsoft Azure tracks user activity and sign-on metrics and creates audit log reports that help you understand how your users access and leverage Azure AD services.  Use the Microsoft Graph API for Azure AD to analyze the data underlying these reports and to create custom solutions tailored to your organization's specific needs.

## Why integrate with Azure AD audit logs

By integrating solutions with audit log reporting data, you can quickly identity and respond to risky behavior.  You can also study how Azure AD services are leveraged in your organization and ensure your licenses are optimized effectively.

If you provide risk detection, analysis, or mitigation services to Azure AD tenants, your custom solutions can target more than 15 million organizations, including 90% of the Fortune 500 companies that already use Azure AD capabilities.


## What can I do with audit log APIs in Microsoft Graph?

Here are popular requests for working with audit log data:

Operation | URL
:----------|:----
GET tenant user activities | [https://graph.microsoft.com/beta/auditLogs/directoryAudits](https://developer.microsoft.com/graph/graph-explorer?request=auditLogs/directoryAudits&version=beta)
GET tenant user sign-ins | [https://graph.microsoft.com/beta/auditLogs/signIns](https://developer.microsoft.com/graph/graph-explorer?request=auditLogs/signIns&version=beta)

## What Azure AD licenses are needed to access audit logs?

All editions of Azure Active Directory provide you with basic audit log report data.

However, the level of report granularity varies between the editions: 

- In the Azure Active Directory Free and Basic editions, you already get a list of risky sign-ins. 

- The Azure Active Directory Premium 1 edition extends this model by also enabling you to examine some of the underlying risk events that have been detected for each report. 

- The Azure Active Directory Premium 2 edition provides you with the most detailed information about all underlying risk events and it also enables you to configure security policies that automatically respond to configured risk levels.

To learn the sign-in report differences between plans, see [Risky sign-ins report in the Azure Active Directory portal](https://docs.microsoft.com/azure/active-directory/active-directory-reporting-security-risky-sign-ins).  For more details about each plan, see [Azure ACtive Directory pricing](https://azure.microsoft.com/pricing/details/active-directory/).

## Next Steps

- [directoryAudits](directoryAudits.md) resource and actions.
- [signIns](signIns.md) resource and actions. 