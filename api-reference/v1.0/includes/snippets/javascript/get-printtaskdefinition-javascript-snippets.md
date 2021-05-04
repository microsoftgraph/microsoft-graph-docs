---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let printTaskDefinition = await client.api('/print/taskDefinitions/{printTaskDefinitionId}')
	.get();

```