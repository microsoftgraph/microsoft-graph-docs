---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const continuousAccessEvaluationPolicy = {
  @odata.type: "#microsoft.graph.continuousAccessEvaluationPolicy",
  users: [ "88139f01-1f8d-4c06-ad74-a2544cee9aee" ],
  groups: [ "9972fb3f-7a40-49f5-85f6-129d9dfbd47a", "ea178055-4713-4d9a-a06c-ff17466b7e77"]
};

let res = await client.api('/identity/continuousAccessEvaluationPolicy')
	.version('beta')
	.update(continuousAccessEvaluationPolicy);

```