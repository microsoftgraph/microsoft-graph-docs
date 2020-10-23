---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const featureRolloutPolicy = {
  displayName: "PassthroughAuthentication rollout policy",
  description: "PassthroughAuthentication rollout policy",
  feature: "passthroughAuthentication",
  isEnabled: true,
  isAppliedToOrganization: false
};

let res = await client.api('/directory/featureRolloutPolicies')
	.version('beta')
	.post(featureRolloutPolicy);

```