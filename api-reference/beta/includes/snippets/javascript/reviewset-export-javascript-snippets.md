---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const _export = {
  outputName: '2020-12-06 Contoso investigation export',
  description: 'Export for the Contoso investigation',
  exportOptions: 'originalFiles,fileInfo,tags',
  exportStructure: 'directory'
};

await client.api('/compliance/ediscovery/cases/99e865fc-e29f-479a-ba83-9e58eb017103/reviewsets/e44ac2cb-f8b4-4fd8-aa1c-1391b46ba9cc/export')
	.version('beta')
	.post(_export);

```