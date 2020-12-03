---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const externalItem = {
  @odata.type: "microsoft.graph.externalItem",
  acl: [
    {
      type: "user",
      value: "e811976d-83df-4cbd-8b9b-5215b18aa874",
      accessType: "grant",
      identitySource: "azureActiveDirectory"
    },
    {
      type: "group",
      value: "14m1b9c38qe647f6a",
      accessType: "deny",
      identitySource: "external"
    }
  ],
  properties: {
    title: "Error in the payment gateway",
    priority: 1,
    assignee: "john@contoso.com"
  },
  content: {
    value: "Error in payment gateway...",
    type: "text"
  }
};

let res = await client.api('/connections/contosohr/items/TSP228082938')
	.version('beta')
	.put(externalItem);

```