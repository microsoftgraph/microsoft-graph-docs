---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const personAnnotation = {
  detail: {
    contentType: "text",
    content: "I am originally from Australia, but grew up in Moscow, Russia."
  },
  displayName: "About Me"
};

let res = await client.api('/me/profile/notes')
	.version('beta')
	.post(personAnnotation);

```