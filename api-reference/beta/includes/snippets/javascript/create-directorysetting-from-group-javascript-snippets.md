---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const directorySetting = {
  directorySetting: {
    displayName: "displayName-value",
    templateId: "templateId-value",
    values: [
      {
        name: "name-value",
        value: "value-value"
      }
    ]
  }
};

let res = await client.api('/groups/{id}/settings')
	.version('beta')
	.post(directorySetting);

```