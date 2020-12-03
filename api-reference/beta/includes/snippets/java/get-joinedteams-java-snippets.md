---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ITeamCollectionWithReferencesPage joinedTeams = graphClient.me().joinedTeams()
	.buildRequest()
	.get();

```