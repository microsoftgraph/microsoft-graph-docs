---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationOutcome = {
    @odata.type:"#microsoft.graph.educationFeedbackOutcome",
    feedback:{
        text:{
            content:"This is feedback for the assignment as a whole.",
            contentType:"text"
        }
    }
};

let res = await client.api('/education/me/assignments/{id}/submissions/{id}/outcomes/{id}')
	.version('beta')
	.update(educationOutcome);

```