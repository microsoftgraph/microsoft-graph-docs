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
    "Professional"
  ],
  proficiency: "advancedProfessional"
};

let res = await client.api('/me/profile/skills/{id}')
	.version('beta')
	.update(skillProficiency);

```