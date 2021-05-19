---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const updateAudienceById = {
  memberEntityType: 'String',
  addMembers: [
    'String'
  ],
  removeMembers: [
    'String'
  ],
  addExclusions: [
    'String'
  ],
  removeExclusions: [
    'String'
  ]
};

await client.api('/admin/windows/updates/deployments/{deploymentId}/audience/updateAudienceById')
	.version('beta')
	.post(updateAudienceById);

```