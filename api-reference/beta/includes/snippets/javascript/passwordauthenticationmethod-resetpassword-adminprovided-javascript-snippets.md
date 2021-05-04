---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const passwordResetResponse = {
  newPassword: 'newPassword-value',
};

await client.api('/users/{id | userPrincipalName}/authentication/passwordMethods/{id}/resetPassword')
	.version('beta')
	.post(passwordResetResponse);

```