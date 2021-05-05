---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const threatAssessmentRequest = {
  '@odata.type': '#microsoft.graph.emailFileAssessmentRequest',
  recipientEmail: 'tifc@a830edad9050849EQTPWBJZXODQ.onmicrosoft.com',
  expectedAssessment: 'block',
  category: 'malware',
  contentData: 'UmVjZWl2ZWQ6IGZyb20gTVcyUFIwME1CMDMxNC5uYW1wcmQwMC.....'
};

await client.api('/informationProtection/threatAssessmentRequests')
	.post(threatAssessmentRequest);

```