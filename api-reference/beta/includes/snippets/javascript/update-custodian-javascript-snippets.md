---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const custodian = {
  applyHoldToSources: "false",
};

let res = await client.api('/compliance/ediscovery/cases/2192ca408ea2410eba3bec8ae873be6b/custodians/45454331323337443946343043464239')
	.version('beta')
	.update(custodian);

```