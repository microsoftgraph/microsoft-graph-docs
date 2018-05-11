# Overview of security in Microsoft Graph (preview) 

You can use Microsoft Graph to connect with Intelligent Security Graph to take advantage of Microsoft and security partner resources, and build better threat response solutions. Microsoft Graph also provides access to user and account risks detected by the Identity Protection service in Azure Active Directory (Azure AD), enabling you to integrate account risk data into your security applications.

## Why use the security API and connect with Microsoft Intelligent Security Graph?

The Intelligent Security Graph is a unified platform for combatting cyberthreats. It powers real-time threat protection for Microsoft products and services, and supports an ecosystem of integrated solutions.

The [security API in Microsoft Graph](https://aka.ms/graphsecuritydocs) makes it easy to connect with those solutions in the Intelligent Security Graph. It allows you to more readily realize and enrich the value of these solutions.

### Unify and standardize alert management

Correlate alerts across security solutions more easily with a common alert schema. Write code once to integrate alerts from any Microsoft Graph integrated security solution, and keep alert status and assignments in sync across all solutions. You can also stream alerts to security information and event management (SIEM) solutions such as Splunk and IBM QRadar via [Azure Monitor](https://docs.microsoft.com/en-us/azure/monitoring-and-diagnostics/monitor-stream-monitoring-data-event-hubs#what-can-i-do-with-the-monitoring-data-being-sent-to-my-event-hub).

### Federated security aggregation service

Use the security API as a federated security aggregation service to submit queries to all onboarded security providers, and get aggregated responses.

### Unlock security context to drive investigation

Dive deep into related security-relevant inventory (like users, hosts, and apps), then add organizational context from other Microsoft Graph providers (Azure AD, Microsoft Intune, Office 365) to bring business and security contexts together and improve threat response.

## Why use Azure AD to protect identities in your organization?

Most security breaches are the result of attackers stealing a user’s identity, and attackers have become terrifyingly effective in taking advantage of third-party breaches, password spray attacks, and sophisticated phishing attacks. This means you need to protect all your user accounts from these attacks and proactively prevent compromised identities from being abused.

Azure AD uses adaptive machine learning algorithms and heuristics to detect anomalies that indicate potentially compromised accounts. Using this data, Identity Protection protects your users with risk-based conditional access policies and generates reports and alerts on its detections.

Today, Microsoft Graph gives easy access to Azure AD Premium P1 and P2 customers to query risk detections made by Identity Protection and use those events in SIEM systems and security applications.

## Next steps

- [Use the security API](../api-reference/beta/resources/security-api-overview.md)
- [Use the Azure AD Identity Protection API](../api-reference/beta/resources/identityprotection_root.md)

