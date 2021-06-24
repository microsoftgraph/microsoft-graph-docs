---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const printTaskDefinition = {
  displayName: 'Test TaskDefinitionName',
  createdBy: {
    displayName: 'Requesting App Display Name'
  }
};

await client.api('/print/taskDefinitions/{printTaskDefinitionId}')
	.update(printTaskDefinition);

```