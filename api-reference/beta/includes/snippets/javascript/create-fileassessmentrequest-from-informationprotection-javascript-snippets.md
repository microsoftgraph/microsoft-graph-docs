---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const threatAssessmentRequest = {
  @odata.type: "#microsoft.graph.fileAssessmentRequest",
  expectedAssessment: "block",
  category: "malware",
  fileName: "test.txt",
  contentData: "VGhpcyBpcyBhIHRlc3QgZmlsZQ=="
};

let res = await client.api('/informationProtection/threatAssessmentRequests')
	.version('beta')
	.post(threatAssessmentRequest);

```