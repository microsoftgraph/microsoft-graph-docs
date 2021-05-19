---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessReviewHistoryDefinition = {
  displayName: 'Last quarter\'s group reviews April 2021',
  decisions: [
    'approve',
    'deny',
    'dontKnow',
    'notReviewed',
    'notNotified'
  ],
  reviewHistoryPeriodStartDateTime: '2021-01-01T00:00:00Z',
  reviewHistoryPeriodEndDateTime: '2021-04-05T00:00:00Z',
  scopes: [
    {
      '@odata.type': '#microsoft.graph.accessReviewQueryScope',
      queryType: 'MicrosoftGraph',     
      query: '/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, \'accessPackageAssignments\')',
      queryRoot: null
    },  
    {
      '@odata.type': '#microsoft.graph.accessReviewQueryScope',
      queryType: 'MicrosoftGraph',     
      query: '/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, \'/groups\')',
      queryRoot: null
    }
  ]
};

await client.api('/identityGovernance/accessReviews/historyDefinitions')
	.version('beta')
	.post(accessReviewHistoryDefinition);

```