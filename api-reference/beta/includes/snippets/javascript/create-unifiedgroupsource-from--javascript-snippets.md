---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const unifiedGroupSource = {
  'group@odata.bind': 'https://graph.microsoft.com/v1.0/groups/b96f95c5-b1b3-4142-b039-8ac79e7d2c84',
  includedSources: 'mailbox, site'
};

await client.api('/compliance/ediscovery/cases/{caseId}/custodians/{custodianId}/unifiedGroupSources')
	.version('beta')
	.post(unifiedGroupSource);

```