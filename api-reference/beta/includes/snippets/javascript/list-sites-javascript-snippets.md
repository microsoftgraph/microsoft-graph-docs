---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let sites = await client.api('/sites')
	.version('beta')
	.filter('siteCollection/root ne null')
	.select('siteCollection,webUrl')
	.get();

```