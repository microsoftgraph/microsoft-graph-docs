---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Team team = new Team();
team.additionalDataManager().put("template@odata.bind", new JsonPrimitive("https://graph.microsoft.com/beta/teamsTemplates('educationClass')"));
team.displayName = "My Class Team";
team.description = "My Class Team’s Description";

graphClient.teams()
	.buildRequest()
	.post(team);

```