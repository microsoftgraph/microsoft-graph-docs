---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ITeamsAppCollectionPage teamsApps = graphClient.appCatalogs().teamsApps()
	.buildRequest()
	.filter("distributionMethod eq 'organization'")
	.get();

```