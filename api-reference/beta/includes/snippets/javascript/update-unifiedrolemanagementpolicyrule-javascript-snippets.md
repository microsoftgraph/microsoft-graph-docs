---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const unifiedRoleManagementPolicyRule = {
  '@odata.type': '#microsoft.graph.unifiedRoleManagementPolicyRule',
  target: {
    '@odata.type': 'microsoft.graph.unifiedRoleManagementPolicyRuleTarget'
  }
};

await client.api('/policies/roleManagementPolicies/{unifiedRoleManagementPolicyId}/rules/{unifiedRoleManagementPolicyRuleId}')
	.version('beta')
	.update(unifiedRoleManagementPolicyRule);

```