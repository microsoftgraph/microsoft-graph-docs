---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessReview = {
    displayName: 'TestReview new name'
};

await client.api('/accessReviews/006111db-0810-4494-a6df-904d368bd81b')
	.version('beta')
	.update(accessReview);

```