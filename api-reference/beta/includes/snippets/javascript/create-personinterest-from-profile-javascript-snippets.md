---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const personInterest = {
  categories: [
    "categories-value"
  ],
  description: "description-value",
  displayName: "displayName-value",
  webUrl: "webUrl-value"
};

let res = await client.api('/me/profile/interests')
	.version('beta')
	.post(personInterest);

```