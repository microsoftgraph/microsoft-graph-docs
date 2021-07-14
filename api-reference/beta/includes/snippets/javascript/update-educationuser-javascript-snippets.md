---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationUser = {
  relatedContacts: [
    {
      displayName: 'Father Time',
      emailAddress: 'father@time.com',
      mobilePhone: '4251231234',
      relationship: 'guardian',
      accessConsent: true
    },
    {
      displayName: 'Mother Nature',
      emailAddress: 'mother@nature.co.uk',
      mobilePhone: '3251231234',
      relationship: 'parent',
      accessConsent: true
    }
  ]
};

await client.api('/education/users/{educationUserId}')
	.version('beta')
	.update(educationUser);

```