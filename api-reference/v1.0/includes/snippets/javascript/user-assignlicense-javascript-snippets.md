---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const user = {
  addLicenses: [
    {
      disabledPlans: [ "11b0131d-43c8-4bbb-b2c8-e80f9a50834a" ],
      skuId: "guid"
    }
  ],
  removeLicenses: [ "bea13e0c-3828-4daa-a392-28af7ff61a0f" ]
};

let res = await client.api('/me/assignLicense')
	.post(user);

```