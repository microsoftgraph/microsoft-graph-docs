---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const tiIndicator = {
  value: [
    {
      activityGroupNames: [],
      confidence: 0,
      description: 'This is a canary indicator for demo purpose. Take no action on any observables set in this indicator.',
      expirationDateTime: '2019-03-01T21:44:03.1668987+00:00',
      externalId: 'Test--8586509942423126760MS164-0',
      fileHashType: 'sha256',
      fileHashValue: 'b555c45c5b1b01304217e72118d6ca1b14b7013644a078273cea27bbdc1cf9d6',
      killChain: [],
      malwareFamilyNames: [],
      severity: 0,
      tags: [],
      targetProduct: 'Azure Sentinel',
      threatType: 'WatchList',
      tlpLevel: 'green',
    },
    {
      activityGroupNames: [],
      confidence: 0,
      description: 'This is a canary indicator for demo purpose. Take no action on any observables set in this indicator.',
      expirationDateTime: '2019-03-01T21:44:03.1748779+00:00',
      externalId: 'Test--8586509942423126760MS164-1',
      fileHashType: 'sha256',
      fileHashValue: '1796b433950990b28d6a22456c9d2b58ced1bdfcdf5f16f7e39d6b9bdca4213b',
      killChain: [],
      malwareFamilyNames: [],
      severity: 0,
      tags: [],
      targetProduct: 'Azure Sentinel',
      threatType: 'WatchList',
      tlpLevel: 'green',
    }
  ]
};

await client.api('/security/tiIndicators/submitTiIndicators')
	.version('beta')
	.post(tiIndicator);

```