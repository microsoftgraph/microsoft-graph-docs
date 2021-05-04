---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let filterByCurrentUser = await client.api('/identityGovernance/appConsent/appConsentRequests/ee245379-e3bb-4944-a997-24115f0b8b5e/userConsentRequests/filterByCurrentUser(on='reviewer')')
	.version('beta')
	.filter(' (status eq \'Completed\')')
	.get();

```