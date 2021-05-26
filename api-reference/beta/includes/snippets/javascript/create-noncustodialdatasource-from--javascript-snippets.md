---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const noncustodialDataSource = {
    applyHoldToSource: true,
    dataSource: {
        '@odata.type': 'microsoft.graph.ediscovery.userSource',
        email: 'adelev@contoso.com'
    }
};

await client.api('/compliance/ediscovery/cases/5b840b94-f821-4c4a-8cad-3a90062bf51a/noncustodialDataSources')
	.version('beta')
	.post(noncustodialDataSource);

```