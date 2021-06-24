---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String id = "id-value";

String groupId = "groupId-value";

String renameAs = "renameAs-value";

graphClient.me().onenote().sections("{id}")
	.copyToSectionGroup(OnenoteSectionCopyToSectionGroupParameterSet
		.newBuilder()
		.withId(id)
		.withGroupId(groupId)
		.withRenameAs(renameAs)
		.withSiteCollectionId(null)
		.withSiteId(null)
		.build())
	.buildRequest()
	.post();

```