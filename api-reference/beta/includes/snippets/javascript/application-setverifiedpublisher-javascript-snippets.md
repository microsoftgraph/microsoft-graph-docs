---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const setVerifiedPublisher = {
    verifiedPublisherId: "1234567"
};

let res = await client.api('/applications/{id}/setVerifiedPublisher')
	.version('beta')
	.post(setVerifiedPublisher);

```