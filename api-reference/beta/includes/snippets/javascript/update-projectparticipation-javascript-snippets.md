---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const projectParticipation = {
  allowedAudiences: "organization",
  client: {
    department: "Corporate Marketing",
    webUrl: "https://www.contoso.com"
  }
};

let res = await client.api('/me/profile/projects/{id}')
	.version('beta')
	.update(projectParticipation);

```