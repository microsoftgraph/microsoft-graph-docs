---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const plannerAssignedToTaskBoardTaskFormat = {
  orderHintsByAssignee: {
    aaa27244-1db4-476a-a5cb-004607466324: "8566473P 957764Jk!"
  }
};

let res = await client.api('/planner/tasks/{task-id}/assignedToTaskBoardFormat')
	.update(plannerAssignedToTaskBoardTaskFormat);

```