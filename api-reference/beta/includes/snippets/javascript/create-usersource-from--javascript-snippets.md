---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const userSource = {
    email:"megan@contoso.com",
    includedSources:"mailbox, site"
};

let res = await client.api('/compliance/ediscovery/cases/4c8f8f70-7785-4bd4-b296-c98376a2c5e1/custodians/2192ca408ea2410eba3bec8ae873be6b/userSources')
	.version('beta')
	.post(userSource);

```