---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const group = {
  description: 'Group with designated owner and members',
  displayName: 'Operations group',
  groupTypes: [
  ],
  mailEnabled: false,
  mailNickname: 'operations2019',
  securityEnabled: true,
  'owners@odata.bind': [
    'https://graph.microsoft.com/beta/users/26be1845-4119-4801-a799-aea79d09f1a2'
  ],
  'members@odata.bind': [
    'https://graph.microsoft.com/beta/users/ff7cb387-6688-423c-8188-3da9532a73cc',
    'https://graph.microsoft.com/beta/users/69456242-0067-49d3-ba96-9de6f2728e14'
  ]
};

await client.api('/groups')
	.version('beta')
	.post(group);

```