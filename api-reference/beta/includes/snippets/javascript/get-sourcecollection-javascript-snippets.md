---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let sourceCollection = await client.api('/compliance/ediscovery/cases/47746044-fd0b-4a30-acfc-5272b691ba5b/sourcecollections/1a9b4145d8f84e39bc45a7f68c5c5119')
	.version('beta')
	.expand('lastEstimateStatisticsOperation')
	.get();

```