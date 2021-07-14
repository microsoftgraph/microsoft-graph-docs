---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const assign = {
  assignments: [
    {
      id: 'b0c2d35f-3385-46c8-a6f5-6c3dfad7708b_64ff06de-9c00-4a5a-98b5-7f5abe26ffff',
      target: {
        '@odata.type': 'microsoft.graph.cloudPcManagementGroupAssignmentTarget',
        groupId: '64ff06de-9c00-4a5a-98b5-7f5abe26ffff'
        }
    }
  ]
};

await client.api('/deviceManagement/virtualEndpoint/userSettings/b0c2d35f-3385-46c8-a6f5-6c3dfad7708b_64ff06de-9c00-4a5a-98b5-7f5abe26ffff/assign')
	.version('beta')
	.post(assign);

```