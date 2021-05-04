---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let verificationDnsRecords = await client.api('/domains/{domain-name}/verificationDnsRecords')
	.get();

```