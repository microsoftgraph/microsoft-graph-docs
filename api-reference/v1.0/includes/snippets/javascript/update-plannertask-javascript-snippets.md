---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const plannerTask = {
  assignments: {
    fbab97d0-4932-4511-b675-204639209557: {
      @odata.type: "#microsoft.graph.plannerAssignment",
      orderHint: "N9917 U2883!"
    }
  },
  appliedCategories: {
    category3: true,
    category4: false
  }
};

let res = await client.api('/planner/tasks/{task-id}')
	.update(plannerTask);

```