---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const reviewSet = {
  displayName: "My Reviewset 3",
};

let res = await client.api('/compliance/ediscovery/cases/6f65a8e4-c6a0-4cff-8a81-c9ab5df7290d/reviewSets')
	.version('beta')
	.post(reviewSet);

```