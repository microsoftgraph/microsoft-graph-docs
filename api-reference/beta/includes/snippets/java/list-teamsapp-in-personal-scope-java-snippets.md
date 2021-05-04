---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamsAppCollectionPage teamsApps = graphClient.appCatalogs().teamsApps()
	.buildRequest()
	.filter("appDefinitions/any(a:a/allowedInstallationScopes has 'personal')")
	.expand("appDefinitions($select=id,displayName,allowedInstallationScopes)")
	.get();

```