---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const group = {
  addLicenses: [],
  removeLicenses: ["skuId-value-1", "skuId-value-2"]
};

let res = await client.api('/groups/1ad75eeb-7e5a-4367-a493-9214d90d54d0/assignLicense')
	.post(group);

```