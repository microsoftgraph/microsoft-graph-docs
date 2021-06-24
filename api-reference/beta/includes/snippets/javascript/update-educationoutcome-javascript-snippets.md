---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationOutcome = {
    '@odata.type':'#microsoft.graph.educationRubricOutcome',
    rubricQualityFeedback: [
        {
            qualityId: '9a145aa8-f3d9-43a1-8f77-5387ff0693f2',
            feedback: {
                content: 'This is feedback specific to the first quality of the rubric.',
                contentType: 'text'
            }
        },
        {
            qualityId: 'd2331fb2-2761-402e-8de6-93e0afaa076e',
            feedback: {
                content: 'This is feedback specific to the second quality of the rubric.',
                contentType: 'text'
            }
        }
    ],
    rubricQualitySelectedLevels: [
        {
            qualityId: '9a145aa8-f3d9-43a1-8f77-5387ff0693f2',
            columnId: '4fb17a1d-5681-46c2-a295-4e305c3eae23'
        },
        {
            qualityId: 'd2331fb2-2761-402e-8de6-93e0afaa076e',
            columnId: 'aac076bf-51ba-48c5-a2e0-ee235b0b9740'
        }
    ]
};

await client.api('/education/classes/{id}/assignments/{id}/submissions/{id}/outcomes/{id}')
	.version('beta')
	.update(educationOutcome);

```