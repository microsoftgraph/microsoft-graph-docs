---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const mobilityManagementPolicy = {
  '@odata.type': '#microsoft.graph.mobilityManagementPolicy',
  complianceUrl: 'https://portal.uem.contoso.com/?portalAction=Compliance',
  discoveryUrl: 'https://enrollment.uem.contoso.com/enrollmentserver/discovery.svc',
  termsOfUseUrl: 'https://portal.uem.contoso.com/TermsofUse.aspx'
};

await client.api('/policies/mobileDeviceManagementPolicies/ab90bacf-55a3-4a3e-839a-aa4b74e4f020')
	.version('beta')
	.update(mobilityManagementPolicy);

```