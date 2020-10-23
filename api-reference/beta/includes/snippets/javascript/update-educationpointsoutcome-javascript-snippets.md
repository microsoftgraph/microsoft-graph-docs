---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationOutcome = {
    @odata.type:"#microsoft.graph.educationPointsOutcome",
    points:{
        @odata.type:"#microsoft.graph.educationAssignmentPointsGrade",
        points:85.0
    }
};

let res = await client.api('/education/me/assignments/{id}/submissions/{id}/outcomes/{id}')
	.version('beta')
	.update(educationOutcome);

```