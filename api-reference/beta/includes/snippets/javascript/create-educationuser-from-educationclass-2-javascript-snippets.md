---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationUser = {
  '@odata.id':'https://graph.microsoft.com/beta/education/users/14011'
};

await client.api('/education/classes/11017/teachers/$ref')
	.version('beta')
	.post(educationUser);

```