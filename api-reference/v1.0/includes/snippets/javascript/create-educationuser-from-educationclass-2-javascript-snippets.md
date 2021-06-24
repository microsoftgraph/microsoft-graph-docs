---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationUser = {
  '@odata.id':'https://graph.microsoft.com/v1.0/education/users/14011'
};

await client.api('/education/classes/{class-id}/teachers/$ref')
	.post(educationUser);

```