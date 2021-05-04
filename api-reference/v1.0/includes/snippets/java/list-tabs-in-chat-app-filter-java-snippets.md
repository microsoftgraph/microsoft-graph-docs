---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamsTabCollectionPage tabs = graphClient.chats("19:d65713bc498c4a428c71ef9353e6ce20@thread.v2").tabs()
	.buildRequest()
	.filter("teamsApp/id eq 'com.microsoft.teamspace.tab.web'")
	.expand("teamsApp")
	.get();

```