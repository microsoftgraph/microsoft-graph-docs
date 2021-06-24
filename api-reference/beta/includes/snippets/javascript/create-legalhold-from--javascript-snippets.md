---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const legalHold = {
  '@odata.type': '#microsoft.graph.ediscovery.legalHold',
  description: 'String',
  createdBy: {
    '@odata.type': 'microsoft.graph.identitySet'
  },
  isEnabled: 'Boolean',
  status: 'String',
  contentQuery: 'String',
  errors: [
    'String'
  ],
  displayName: 'String'
};

await client.api('/compliance/ediscovery/cases/{caseId}/legalHolds')
	.version('beta')
	.post(legalHold);

```