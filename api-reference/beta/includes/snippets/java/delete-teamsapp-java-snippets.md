---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.appCatalogs().teamsApps("06805b9e-77e3-4b93-ac81-525eb87513b8")
	.buildRequest()
	.delete();

```