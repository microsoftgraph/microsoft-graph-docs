---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const reply = {
  post: {
    body: {
      contentType: '',
      content: 'content-value'
    }
  }
};

await client.api('/groups/{id}/threads/{id}/reply')
	.version('beta')
	.post(reply);

```