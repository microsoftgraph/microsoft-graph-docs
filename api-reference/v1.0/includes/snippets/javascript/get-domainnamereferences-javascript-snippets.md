---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let domainNameReferences = await client.api('/domains/{domain-name}/domainNameReferences')
	.get();

```