---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const identityApiConnector = {
  authenticationConfiguration: {
    '@odata.type': '#microsoft.graph.pkcs12Certificate',
    pkcs12Value: 'eyJhbGciOiJSU0EtT0FFUCIsImVuYyI6IkEyNTZHQ00ifQ...kDJ04sJShkkgjL9Bm49plA',
    password: 'secret'
  }
};

await client.api('/identity/apiConnectors/be1f769b-9b13-437e-b540-79a905c4932c')
	.update(identityApiConnector);

```