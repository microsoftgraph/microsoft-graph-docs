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
  allowedAudiences: "organization",
  displayName: "API Design",
  proficiency: "generalProfessional",
  collaborationTags: [
    "ableToMentor"
  ]
};

let res = await client.api('/me/profile/skills')
	.version('beta')
	.post(skillProficiency);

```