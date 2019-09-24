---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const conversation = {
  Topic: "Does anyone have a second?",
  Threads: [
    {
      Posts: [
        {
          Body: {
            ContentType: "HTML",
            Content: "This is urgent!"
          },
          Extensions: [
            {
              @odata.type: "microsoft.graph.openTypeExtension",
              extensionName: "Com.Contoso.Benefits",
              companyName: "Contoso",
              expirationDate: "2016-08-03T11:00:00.000Z",
              topPicks: [
                "Employees only",
                "Add spouse or guest",
                "Add family"
              ]
            }
          ]
        }
      ]
    }
  ]
};

let res = await client.api('/groups/37df2ff0-0de0-4c33-8aee-75289364aef6/conversations')
	.version('beta')
	.post(conversation);

```