---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Team team = new Team();
team.additionalDataManager().put("template@odata.bind", new JsonPrimitive("https://graph.microsoft.com/v1.0/teamsTemplates('standard')"));
team.displayName = "My Sample Team";
team.description = "My Sample Team’s Description";
team.additionalDataManager().put("owners@odata.bind", new JsonPrimitive("[
  "https://graph.microsoft.com/v1.0/users('userId')"
]"));

graphClient.teams()
	.buildRequest()
	.post(team);

```