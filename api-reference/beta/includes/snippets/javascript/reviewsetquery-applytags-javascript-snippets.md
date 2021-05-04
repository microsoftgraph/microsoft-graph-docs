---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const applyTags = {
    tagsToAdd: [
        {
            id: 'b4798d14-748d-468e-a1ec-96a2b1d49677'
        }
    ]
};

await client.api('/compliance/ediscovery/cases/47746044-fd0b-4a30-acfc-5272b691ba5b/reviewsets/6c95c2a6-31fa-45a8-93ef-dd4531974783/queries/b4798d14-748d-468e-a1ec-96a2b1d49677/applyTags')
	.version('beta')
	.post(applyTags);

```