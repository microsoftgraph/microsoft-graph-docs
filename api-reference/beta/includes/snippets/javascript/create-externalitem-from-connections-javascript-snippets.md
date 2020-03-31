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
      value: "49103559-feac-4575-8b94-254814dfca72",
      accessType: "deny",
      identitySource: "Azure Active Directory"
    }
  ],
  properties: {
    title: "Error in the payment gateway",
    priority: 1,
    assignee: "john@contoso.com"
  },
  content: "Textual content of the file"
};

let res = await client.api('/connections/contosohr/items/TSP228082938')
	.version('beta')
	.put(externalItem);

```