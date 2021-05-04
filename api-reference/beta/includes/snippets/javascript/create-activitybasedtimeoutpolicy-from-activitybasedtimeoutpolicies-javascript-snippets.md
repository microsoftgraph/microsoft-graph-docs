---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const activityBasedTimeoutPolicy = {
  definition: [
    'definition-value'
  ],
  displayName: 'displayName-value',
  isOrganizationDefault: true
};

await client.api('/policies/activityBasedTimeoutPolicies')
	.version('beta')
	.post(activityBasedTimeoutPolicy);

```