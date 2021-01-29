---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const unifiedGroupSource = {
  group@odata.bind: "/groups/000044f9-47c8-4a87-bccf-291fbf006a54",
  includedSources:  "mailbox, site"
};

let res = await client.api('/compliance/ediscovery/cases/{ediscoveryCaseId}/custodians/{custodianId}/unifiedGroupSources')
	.version('beta')
	.post(unifiedGroupSource);

```