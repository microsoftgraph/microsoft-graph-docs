---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const personCertification = {
  issuingAuthority: 'International Academy of Marketing Excellence',
  issuingCompany: 'International Academy of Marketing Excellence'
};

await client.api('/users/{userId}/profile/certifications/{id}')
	.version('beta')
	.update(personCertification);

```