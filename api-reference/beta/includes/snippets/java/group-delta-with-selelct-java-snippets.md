---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GroupDeltaCollectionPage delta = graphClient.groups()
	.delta()
	.buildRequest()
	.select("displayName,description,mailNickname")
	.get();

```