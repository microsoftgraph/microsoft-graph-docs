---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const oAuth2PermissionGrant = {
  clientId: 'clientId-value',
  consentType: 'consentType-value',
  principalId: 'principalId-value',
  resourceId: 'resourceId-value',
  scope: 'scope-value',
  startTime: '2016-10-19T10:37:00Z',
  expiryTime: '2016-10-19T10:37:00Z'
};

await client.api('/oauth2PermissionGrants')
	.version('beta')
	.post(oAuth2PermissionGrant);

```