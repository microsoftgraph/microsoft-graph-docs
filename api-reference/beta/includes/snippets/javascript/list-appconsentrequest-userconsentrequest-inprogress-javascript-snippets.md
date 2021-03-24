---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let appConsentRequests = await client.api('/identityGovernance/appConsent/appConsentRequests')
	.version('beta')
	.filter('userConsentRequests/any (u:u/status eq \'InProgress\')')
	.get();

```