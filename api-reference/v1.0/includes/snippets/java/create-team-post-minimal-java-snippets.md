---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Team team = new Team();
team.additionalDataManager().put("template@odata.bind", new JsonPrimitive("https://graph.microsoft.com/v1.0/teamsTemplates('standard')"));
team.displayName = "My Sample Team";
team.description = "My Sample Team’s Description";
team.additionalDataManager().put("members@odata.bind", new JsonPrimitive("[
  {
    "@odata.type": "#microsoft.graph.aadUserConversationMember",
    "roles": [
      "owner"
    ],
    "userId": "0040b377-61d8-43db-94f5-81374122dc7e"
  }
]"));

graphClient.teams()
	.buildRequest()
	.post(team);

```