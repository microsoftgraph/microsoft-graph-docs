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
	.filter('businessFlowTemplateId+eq+'6E4F3D20-C5C3-407F-9695-8460952BCC68'')
	.get();

```