---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const teamsAppDefinition = [Zip file containing a Teams app package];

let res = await client.api('/appCatalogs/teamsApps/e3e29acb-8c79-412b-b746-e6c39ff4cd22/appDefinitions?requiresReview=true')
	.version('beta')
	.post(teamsAppDefinition);

```