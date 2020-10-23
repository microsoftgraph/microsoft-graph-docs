---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const string = {
  groupIds: [
    "groupId-value1", "groupId-value2" 
  ]
};

let res = await client.api('/contacts/{id}/checkMemberGroups')
	.post(string);

```