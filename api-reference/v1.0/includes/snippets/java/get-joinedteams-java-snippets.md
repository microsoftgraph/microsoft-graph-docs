---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamCollectionPage joinedTeams = graphClient.me().joinedTeams()
	.buildRequest()
	.get();

```