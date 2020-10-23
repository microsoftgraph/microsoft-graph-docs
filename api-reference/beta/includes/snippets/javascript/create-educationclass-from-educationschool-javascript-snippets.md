---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationClass = {
 @odata.id:"https://graph.microsoft.com/beta/education/classes/11006"
};

let res = await client.api('/education/schools/10002/classes/$ref')
	.version('beta')
	.post(educationClass);

```