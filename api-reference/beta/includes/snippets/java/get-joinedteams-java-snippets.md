---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ITeamCollectionPage joinedTeams = graphClient.me().joinedTeams()
	.buildRequest()
	.get();

```