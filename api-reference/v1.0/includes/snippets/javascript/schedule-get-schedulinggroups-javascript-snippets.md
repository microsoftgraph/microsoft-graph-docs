---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let schedulingGroup = await client.api('/teams/{teamId}/schedule/schedulingGroups/{schedulingGroupId}')
	.get();

```