---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.teams("{id}")
	.archive(TeamArchiveParameterSet
		.newBuilder()
		.withShouldSetSpoSiteReadOnlyForMembers(null)
		.build())
	.buildRequest()
	.post();

```