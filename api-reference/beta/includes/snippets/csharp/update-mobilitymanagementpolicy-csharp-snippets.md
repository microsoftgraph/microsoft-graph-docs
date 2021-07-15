---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var mobilityManagementPolicy = new MobilityManagementPolicy
{
	ComplianceUrl = "https://portal.uem.contoso.com/?portalAction=Compliance",
	DiscoveryUrl = "https://enrollment.uem.contoso.com/enrollmentserver/discovery.svc",
	TermsOfUseUrl = "https://portal.uem.contoso.com/TermsofUse.aspx"
};

await graphClient.Policies.MobileDeviceManagementPolicies["{mobilityManagementPolicy-id}"]
	.Request()
	.UpdateAsync(mobilityManagementPolicy);

```