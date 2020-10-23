---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const informationProtectionAction = {
  contentInfo: {
    @odata.type: "#microsoft.graph.contentInfo",
    format@odata.type: "#microsoft.graph.contentFormat",
    format: "default",
    identifier: null,
    state@odata.type: "#microsoft.graph.contentState",
    state: "rest"
  },
  classificationResults: [
    {
      sensitiveTypeId: "cb353f78-2b72-4c3c-8827-92ebe4f69fdf",
      count: 4,
      confidenceLevel: 75
    }
  ]
};

let res = await client.api('/informationprotection/policy/labels/evaluateClassificationResults')
	.version('beta')
	.post(informationProtectionAction);

```