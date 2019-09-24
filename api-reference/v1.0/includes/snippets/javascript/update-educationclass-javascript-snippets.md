---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationClass = {
  description: "History - World History 1",
  displayName: "World History Level 1",
};

let res = await client.api('/education/classes/{class-id}')
	.update(educationClass);

```