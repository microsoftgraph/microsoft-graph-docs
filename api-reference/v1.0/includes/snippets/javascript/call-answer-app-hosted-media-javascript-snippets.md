---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const answer = {
  callbackUri: "https://bot.contoso.com/api/calls",
  acceptedModalities: [ "audio" ],
  mediaConfig: {
    @odata.type: "#microsoft.graph.appHostedMediaConfig",
    blob: "<Media Session Configuration Blob>"
  }
};

let res = await client.api('/communications/calls/57DAB8B1894C409AB240BD8BEAE78896/answer')
	.post(answer);

```