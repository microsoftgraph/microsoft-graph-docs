---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const identityApiConnector = {
    displayName:"Test API",
    targetUrl:"https://someapi.com/api",
    authenticationConfiguration: {
      @odata.type:"#microsoft.graph.basicAuthentication",
      username:"<USERNAME>",
      password:"<PASSWORD>"
    }
};

let res = await client.api('/identity/apiConnectors')
	.version('beta')
	.post(identityApiConnector);

```