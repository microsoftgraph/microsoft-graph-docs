---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const addToReviewSet = {
    sourceCollection: {
        id: '1a9b4145d8f84e39bc45a7f68c5c5119'
    },
    additionalData: 'linkedFiles'
};

await client.api('/compliance/ediscovery/cases/080e8cad-f21f-4452-8826-0ddf7e949fdd/reviewSets/6fe25d32-8167-4625-b75c-c4181ccbd9d5/addToReviewSet')
	.version('beta')
	.post(addToReviewSet);

```