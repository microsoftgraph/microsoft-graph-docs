---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const reviewSetQuery = {
     "displayName" : "My Query 1",
     query: "(subject:\"Quarterly Financials\")"
};

let res = await client.api('/compliance/ediscovery/cases/2eef613a-ca2d-42f4-89fe-84d5198ddedf/reviewSets/b26888b3-e1f5-47c5-bdf2-33d1b90cb2e8/queries')
	.version('beta')
	.post(reviewSetQuery);

```