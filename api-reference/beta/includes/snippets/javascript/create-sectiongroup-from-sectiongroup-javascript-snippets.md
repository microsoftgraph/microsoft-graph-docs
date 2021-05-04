---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const sectionGroup = {
  displayName: 'Section group name'
};

await client.api('/me/onenote/sectionGroups/{id}/sectionGroups')
	.version('beta')
	.post(sectionGroup);

```