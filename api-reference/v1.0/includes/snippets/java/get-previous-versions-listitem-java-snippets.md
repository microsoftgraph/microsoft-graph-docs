---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ListItemVersionCollectionPage versions = graphClient.sites("{site-id}").lists("{list-id}").items("{item-id}").versions()
	.buildRequest()
	.get();

```