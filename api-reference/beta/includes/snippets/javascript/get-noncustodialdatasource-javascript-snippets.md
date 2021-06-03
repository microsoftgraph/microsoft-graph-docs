---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let noncustodialDataSource = await client.api('/compliance/ediscovery/cases/5b840b94-f821-4c4a-8cad-3a90062bf51a/noncustodialDataSources/8b69818bf6af4f8a9dede428401c71e7')
	.version('beta')
	.get();

```