---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const answer = {
  callbackUri: 'https://bot.contoso.com/api/calls',
  acceptedModalities: [ 'audio' ],
  mediaConfig: {
    '@odata.type': '#microsoft.graph.serviceHostedMediaConfig',
    preFetchMedia: [
      {
        uri: 'https://cdn.contoso.com/beep.wav',
        resourceId: '1D6DE2D4-CD51-4309-8DAA-70768651088E'
      },
      {
        uri: 'https://cdn.contoso.com/cool.wav',
        resourceId: '1D6DE2D4-CD51-4309-8DAA-70768651088F'
      }
    ]
  }
};

await client.api('/communications/calls/57DAB8B1894C409AB240BD8BEAE78896/answer')
	.post(answer);

```