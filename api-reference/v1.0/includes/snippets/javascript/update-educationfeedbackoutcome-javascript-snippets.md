---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationOutcome = {
    '@odata.type':'#microsoft.graph.educationFeedbackOutcome',
    feedback: {
        text: {
            content: 'This is feedback for the assignment as a whole.',
            contentType: 'text'
        }
    }
};

await client.api('/education/classes/acdefc6b-2dc6-4e71-b1e9-6d9810ab1793/assignments/cf6005fc-9e13-44a2-a6ac-a53322006454/submissions/d1bee293-d8bb-48d4-af3e-c8cb0e3c7fe7/outcomes/9c0f2850-ff8f-4fd6-b3ac-e23077b59141')
	.update(educationOutcome);

```