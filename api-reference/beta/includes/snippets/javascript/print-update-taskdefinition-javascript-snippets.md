---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const printTaskDefinition = {
  displayName: "Test TaskDefinitionName",
  createdBy: {
    displayName: "Requesting App Display Name"
  }
};

let res = await client.api('/print/taskDefinitions/fab143fd-ee61-4358-8558-2c7dee953982')
	.version('beta')
	.update(printTaskDefinition);

```