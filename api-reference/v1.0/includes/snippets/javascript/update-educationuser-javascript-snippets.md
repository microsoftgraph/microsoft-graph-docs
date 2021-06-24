---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationUser = {
  displayName: 'Rogelio Cazares',
  givenName: 'Rogelio',
  middleName: 'Fernando',
  surname: 'Cazares',
};

await client.api('/education/users/{user-id}')
	.update(educationUser);

```