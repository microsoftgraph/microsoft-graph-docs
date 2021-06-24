---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const plannerProgressTaskBoardTaskFormat = {
  orderHint: 'A6673H Ejkl!'
};

await client.api('/planner/tasks/{task-id}/progressTaskBoardFormat')
	.update(plannerProgressTaskBoardTaskFormat);

```