---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const custodian = {
    email:"AdeleV@contoso.com",
    applyHoldToSources:"true"
};

let res = await client.api('/compliance/ediscovery/cases/2192ca408ea2410eba3bec8ae873be6b/custodians')
	.version('beta')
	.post(custodian);

```