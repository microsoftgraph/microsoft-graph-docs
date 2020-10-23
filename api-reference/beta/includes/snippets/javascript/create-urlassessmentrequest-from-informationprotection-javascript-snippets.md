---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const threatAssessmentRequest = {
  @odata.type: "#microsoft.graph.urlAssessmentRequest",
  url: "http://test.com",
  expectedAssessment: "block",
  category: "phishing"
};

let res = await client.api('/informationProtection/threatAssessmentRequests')
	.version('beta')
	.post(threatAssessmentRequest);

```