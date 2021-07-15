---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MobilityManagementPolicy mobilityManagementPolicy = new MobilityManagementPolicy();
mobilityManagementPolicy.complianceUrl = "https://portal.uem.contoso.com/?portalAction=Compliance";
mobilityManagementPolicy.discoveryUrl = "https://enrollment.uem.contoso.com/enrollmentserver/discovery.svc";
mobilityManagementPolicy.termsOfUseUrl = "https://portal.uem.contoso.com/TermsofUse.aspx";

graphClient.policies().mobileDeviceManagementPolicies("ab90bacf-55a3-4a3e-839a-aa4b74e4f020")
	.buildRequest()
	.patch(mobilityManagementPolicy);

```