---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const threatAssessmentRequest = {
  '@odata.type': '#microsoft.graph.mailAssessmentRequest',
  recipientEmail: 'tifc@a830edad9050849EQTPWBJZXODQ.onmicrosoft.com',
  expectedAssessment: 'block',
  category: 'spam',
  messageUri: 'https://graph.microsoft.com/beta/users/c52ce8db-3e4b-4181-93c4-7d6b6bffaf60/messages/AAMkADU3MWUxOTU0LWNlOTEt='
};

await client.api('/informationProtection/threatAssessmentRequests')
	.version('beta')
	.post(threatAssessmentRequest);

```