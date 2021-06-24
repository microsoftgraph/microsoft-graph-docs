---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const governanceRoleSetting = {
   adminEligibleSettings: [
      {
         ruleIdentifier: 'ExpirationRule',
         setting: '{\"permanentAssignment\':false,\'maximumGrantPeriodInMinutes\':129600}"
      }
   ]
};

await client.api('/privilegedAccess/azureResources/roleSettings/5fb5aef8-1081-4b8e-bb16-9d5d0385bab5')
	.version('beta')
	.update(governanceRoleSetting);

```