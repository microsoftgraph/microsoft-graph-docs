---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const contentType = {
    name: 'docSet',
    description: 'custom docset',
    base: {
        name: 'Document Set',
        id: '0x0120D520'
    },
    group: 'Document Set Content Types' 
};

await client.api('/sites/{id}/contentTypes')
	.version('beta')
	.post(contentType);

```