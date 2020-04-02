---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const skillProficiency = {
  categories: [
    "categories-value"
  ],
  displayName: "displayName-value",
  proficiency: "proficiency-value",
  webUrl: "webUrl-value"
};

let res = await client.api('/me/profile/skills')
	.version('beta')
	.post(skillProficiency);

```