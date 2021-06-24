---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const timeOffReason = {
  displayName: 'Vacation',
  iconType: 'plane',
  isActive: true
};

await client.api('/teams/{teamId}/schedule/timeOffReasons')
	.version('beta')
	.post(timeOffReason);

```