---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const adminConsentRequestPolicy = {
  isEnabled: true,
  notifyReviewers: true,
  remindersEnabled: true,
  requestDurationInDays: 5,
  reviewers: [
    {
      query: '/users/b6879be8-fb87-4482-a72e-18445d2b5c54',
      queryType: 'MicrosoftGraph'
    },
    {
      query: '/users/b3427cc5-bf69-4dcd-95f7-ed1eb432f5e9',
      queryType: 'MicrosoftGraph'
    }
  ]
};

await client.api('/policies/adminConsentRequestPolicy')
	.version('beta')
	.put(adminConsentRequestPolicy);

```