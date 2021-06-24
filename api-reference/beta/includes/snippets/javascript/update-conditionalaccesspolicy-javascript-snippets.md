---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const conditionalAccessPolicy = {
    conditions: {
        signInRiskLevels: [
            'high',
            'medium',
            'low',
        ]
    }
};

await client.api('/identity/conditionalAccess/policies/{id}')
	.version('beta')
	.update(conditionalAccessPolicy);

```