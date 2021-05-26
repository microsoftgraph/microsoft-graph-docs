---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const siteSource = {
    'site@odata.bind': 'https://graph.microsoft.com/v1.0/sites/50073f3e-cb22-48e5-95a9-51a3da455181'
};

await client.api('/compliance/ediscovery/cases/c816dd6f-5af8-40c5-a760-331361e05c60/legalHolds/387566cc-38ae-4e85-ab4b-cd2dd34faa07/siteSources')
	.version('beta')
	.post(siteSource);

```