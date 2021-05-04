---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SessionCollectionPage sessions = graphClient.communications().callRecords("{id}").sessions()
	.buildRequest()
	.get();

```