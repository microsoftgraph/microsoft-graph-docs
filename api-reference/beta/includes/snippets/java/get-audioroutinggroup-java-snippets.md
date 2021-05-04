---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AudioRoutingGroup audioRoutingGroup = graphClient.communications().calls("{id}").audioRoutingGroups("{id}")
	.buildRequest()
	.get();

```