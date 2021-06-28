---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let timeCards = await client.api('/teams/fd15cad8-80f6-484f-9666-3caf695fbf32/schedule/timeCards')
	.version('beta')
	.filter('state eq \'clockedOut\'')
	.top(2)
	.get();

```