---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/accessReviews')
	.version('beta')
	.filter('businessFlowTemplateId eq '6e4f3d20-c5c3-407f-9695-8460952bcc68'')
	.skip(0)
	.top(100)
	.get();

```