---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamsTab teamsTab = new TeamsTab();
teamsTab.displayName = "My Contoso Tab - updated again";

graphClient.chats("19:d65713bc498c4a428c71ef9353e6ce20@thread.v2").tabs("794f0e4e-4d10-4bb5-9079-3a465a629eff")
	.buildRequest()
	.patch(teamsTab);

```