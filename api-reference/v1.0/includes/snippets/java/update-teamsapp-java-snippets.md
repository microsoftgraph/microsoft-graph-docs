---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

byte[] teamsApp = Base64.getDecoder().decode("[Zip file containing a Teams app package]");
	graphClient.appCatalogs().teamsApps("06805b9e-77e3-4b93-ac81-525eb87513b8")
	.buildRequest()
	.put(teamsApp);

```