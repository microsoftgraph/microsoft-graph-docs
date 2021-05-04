---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamsTabCollectionPage tabs = graphClient.teams("6903fa93-605b-43ef-920e-77c4729f8258").channels("19:33b76eea88574bd1969dca37e2b7a819@thread.skype").tabs()
	.buildRequest()
	.filter("teamsApp/id eq 'com.microsoft.teamspace.tab.planner'")
	.expand("teamsApp")
	.get();

```