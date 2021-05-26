---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationClass = {
  '@odata.type': '#microsoft.graph.educationClass',
  displayName: 'String',
  mailNickname: 'String',
  description: 'String',
  createdBy: {
    '@odata.type': 'microsoft.graph.identitySet'
  },
  classCode: 'String',
  externalName: 'String',
  externalId: 'String',
  externalSource: 'String',
  externalSourceDetail: 'String',
  grade: 'String',
  term: {
    '@odata.type': 'microsoft.graph.educationTerm'
  }
};

await client.api('/education/classes')
	.post(educationClass);

```