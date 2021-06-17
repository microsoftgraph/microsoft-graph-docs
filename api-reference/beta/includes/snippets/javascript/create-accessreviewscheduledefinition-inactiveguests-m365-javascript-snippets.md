---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessReviewScheduleDefinition = {
  displayName: 'Review inactive guests on teams',
  descriptionForAdmins: 'Control guest user access to our teams.',
  descriptionForReviewers: 'Information security is everyone\'s responsibility. Review our access policy for more.',
  instanceEnumerationScope: {
    '@odata.type': '#microsoft.graph.accessReviewQueryScope',
    query: '/groups?$filter=(groupTypes/any(c:c+eq+\'Unified\') and resourceProvisioningOptions/Any(x:x eq \'Team\')\')',
    queryType: 'MicrosoftGraph'
  },
  scope: {
    '@odata.type': '#microsoft.graph.accessReviewInactiveUsersQueryScope',
    query: './members/microsoft.graph.user/?$filter=(userType eq \'Guest\')',
    queryType: 'MicrosoftGraph',
    inactiveDuration: 'P30D'
    },
  reviewers: [
    {
      query: './owners',
      queryType: 'MicrosoftGraph'
    }
  ],
  fallbackReviewers: [
    {
      query: '/users/fc9a2c2b-1ddc-486d-a211-5fe8ca77fa1f',
      queryType: 'MicrosoftGraph'
    }
  ],
  settings: {
    mailNotificationsEnabled: true,
    reminderNotificationsEnabled: true,
    justificationRequiredOnApproval: true,
    recommendationsEnabled: true,
    instanceDurationInDays: 3,
    recurrence: {
      pattern: {
        type: 'absoluteMonthly',
        dayOfMonth: 5,
        interval: 3
      },
      range: {
        type: 'noEnd',
        startDate: '2020-05-04T00:00:00.000Z'
      }
    },
    defaultDecisionEnabled: true,
    defaultDecision: 'Deny',
    autoApplyDecisionsEnabled: true
  }
};

await client.api('/identityGovernance/accessReviews/definitions')
	.version('beta')
	.post(accessReviewScheduleDefinition);

```