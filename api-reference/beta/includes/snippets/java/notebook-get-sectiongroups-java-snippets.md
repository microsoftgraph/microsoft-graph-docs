---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SectionGroupCollectionPage sectionGroups = graphClient.me().onenote().notebooks("{id}").sectionGroups()
	.buildRequest()
	.get();

```