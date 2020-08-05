---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const printJob = {
  destinationPrinterId: "9a3b3956-ce5b-4d06-a605-5b0bd3e9ddea"
};

let res = await client.api('/print/printers/d5ef6ec4-07ca-4212-baf9-d45be126bfbb/jobs/44353/redirect')
	.version('beta')
	.post(printJob);

```