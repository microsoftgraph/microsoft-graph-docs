---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const unifiedRoleEligibilityScheduleRequest = {
  '@odata.type': '#Microsoft.Identity.Governance.Common.Data.ExternalModels.V1.unifiedRoleEligibilityScheduleRequest',
  action: 'String',
  principalId: 'String',
  roleDefinitionId: 'String',
  directoryScopeId: 'String',
  appScopeId: 'String',
  isValidationOnly: 'Boolean',
  targetScheduleId: 'String',
  justification: 'String',
  scheduleInfo: {
    '@odata.type': 'microsoft.graph.requestSchedule'
  },
  ticketInfo: {
    '@odata.type': 'microsoft.graph.ticketInfo'
  }
};

await client.api('/roleManagement/directory/roleEligibilityScheduleRequests')
	.version('beta')
	.post(unifiedRoleEligibilityScheduleRequest);

```