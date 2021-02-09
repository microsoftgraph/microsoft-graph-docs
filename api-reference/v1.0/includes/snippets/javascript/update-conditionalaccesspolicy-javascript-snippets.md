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
            "high",
            "medium",
            "low",
        ]
    }
};

let res = await client.api('/identity/conditionalAccess/policies/{id}')
	.update(conditionalAccessPolicy);

```