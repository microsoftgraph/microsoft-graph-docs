---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let plannerProgressTaskBoardTaskFormat = await client.api('/planner/tasks/{task-id}/progressTaskBoardFormat')
	.get();

```