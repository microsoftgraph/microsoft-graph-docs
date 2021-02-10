---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationAssignmentSettings = {
  submissionAnimationDisabled: true
};

let res = await client.api('/education/classes/{id}/assignmentSettings')
	.version('beta')
	.update(educationAssignmentSettings);

```