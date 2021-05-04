---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamsAppCollectionPage teamsApps = graphClient.appCatalogs().teamsApps()
	.buildRequest()
	.filter("externalId eq 'cf1ba4c7-f94e-4d80-ba90-5594b641a8ee'")
	.get();

```