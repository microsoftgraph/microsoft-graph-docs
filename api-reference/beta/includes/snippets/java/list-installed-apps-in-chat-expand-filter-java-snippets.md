---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamsAppInstallationCollectionPage installedApps = graphClient.chats("19:d65713bc498c4a428c71ef9353e6ce20@thread.v2").installedApps()
	.buildRequest()
	.filter("teamsApp/externalId eq 'cf1ba4c7-f94e-4d80-ba90-5594b641a8ee'")
	.expand("teamsAppDefinition")
	.get();

```