---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const identityApiConnector = {
  displayName: "New Test API",
  targetUrl: "https://otherapi.com/api/endpoint",
  authenticationConfiguration: {
    @odata.type: "microsoft.graph.basicAuthentication",
    username:"<NEW_USERNAME>", 
    password:"<NEW_PASSWORD>"
  }
};

let res = await client.api('/identity/apiConnectors/{identityApiConnectorId}')
	.version('beta')
	.update(identityApiConnector);

```