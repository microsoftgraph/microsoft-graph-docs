---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationClass = {
 '@odata.id':'https://graph.microsoft.com/v1.0/education/classes/11006'
};

await client.api('/education/schools/{school-id}/classes/$ref')
	.post(educationClass);

```