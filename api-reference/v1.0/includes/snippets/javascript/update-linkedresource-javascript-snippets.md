---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const linkedResource = {
  @odata.type: "#microsoft.graph.linkedResource",
  webUrl: "http://microsoft.com",
  applicationName: "Microsoft",
  displayName: "Microsoft"
};

let res = await client.api('/me/todo/lists/dfsdc-f9dfdfs-dcsda9/tasks/e2dc-f9cce2-dce29/linkedResources/f9cddce2-dce2-f9cd-e2dc-cdf9e2dccdf9')
	.update(linkedResource);

```