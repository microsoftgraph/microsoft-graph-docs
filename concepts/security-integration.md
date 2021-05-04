---
title: "Security solution integrations using the Microsoft Graph Security API"
description: "You can connect with the Microsoft Graph Security API using any of the options described in this article. These options enable you to work with data in a unified format across supported Microsoft and partner security providers through a single integration."
author: "preetikr"
localization_priority: Priority
ms.prod: "security"
---

# Security solution integrations using the Microsoft Graph Security API

You can connect with the Microsoft Graph Security API using any of the following options. These options enable you to work with data in a unified format across [supported Microsoft and partner security providers](/graph/api/resources/security-api-overview#alerts) through a single integration.

- **Directly using the supported integration options** – Refer to the [list of supported integration options](./security-concept-overview.md#why-use-the-microsoft-graph-security-api) like writing code to directly connect your application to derive rich insights. Leverage [samples](https://aka.ms/graphsecurityapicode) to get started.
- **Use native integrations and connectors built by Microsoft partners** – Refer to the [Microsoft Graph Security API partner solutions](https://aka.ms/graphsecuritypartnerships) to use these integrations.  
- **Use connectors built by Microsoft** – Refer to the [list of connectors](#list-of-connectors-from-microsoft) that you can use to connect with the API through a variety of solutions for Security Incident and Management (SIEM), Security Response and Orchestration (SOAR), Incident Tracking and Service Management (ITSM), reporting, and so on.  

## List of connectors from Microsoft

| Solution type | Name | Connector | Announcement |
|:-----|:--------|:--------|:----------|
| SIEM |Splunk Enterprise and Splunk Cloud|[Microsoft Graph Security API Add-On for Splunk](https://aka.ms/graphsecuritysplunkaddon) | [Blog post](https://aka.ms/graphsecuritysplunkaddonblogpost)<br>[Splunk on Cloud blog post](https://aka.ms/graphsecuritysplunkcloudblogpost)|
| SIEM |QRadar|[Microsoft Graph Security API Protocol and supported QRadar DSMs](https://www.ibm.com/support/knowledgecenter/SS42VS_DSM/com.ibm.dsm.doc/c_logsource_Microsoft_Graph_Security_protocol.html)| - |
| ITSM |ServiceNow|[Microsoft Graph Security API alert ingestion integration](https://docs.servicenow.com/bundle/orlando-security-management/page/product/secops-integration-sir/secops-integration-ms-graph/concept/ms-graph-about.html)| - |
| SOAR | Azure Logic Apps / Microsoft Flow | [Microsoft Graph Security connector for Azure Logic Apps, Microsoft Flow and PowerApps](/azure/connectors/connectors-integrate-security-operations-create-api-microsoft-graph-security) | [Blog post](https://aka.ms/graphsecurityconnectorsblogpost) |
| Automation | PowerShell module | [Microsoft Graph Security PowerShell Module](https://aka.ms/graphsecuritypowershellmodule) | [Blog post](https://aka.ms/graphsecuritypowershellmodulepost) |
| Reporting | Power BI | [Microsoft Graph Security connector for Power BI](/power-bi/connect-data/desktop-connect-graph-security) | [Blog post](https://aka.ms/graphsecuritypowerbiconnectorblogpost) |

Review the [partnership opportunities](./security-partner-overview.md) if you would like to support native integrations in your solution or be a data provider for Microsoft Graph Security API.