---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const groupLifecyclePolicy = {
  groupLifetimeInDays: 100,
  managedGroupTypes: 'Selected',
  alternateNotificationEmails: 'admin@contoso.com'
};

await client.api('/groupLifecyclePolicies')
	.post(groupLifecyclePolicy);

```