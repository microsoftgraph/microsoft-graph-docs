---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const outlookTaskFolder = {
  name: "Charity work"
};

let res = await client.api('/me/outlook/taskFolders/AAMkADIyAAAhrbPWAAA=')
	.version('beta')
	.update(outlookTaskFolder);

```