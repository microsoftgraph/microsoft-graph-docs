---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String groupId = "groupId-value";

String renameAs = "renameAs-value";

graphClient.me().onenote().notebooks("{id}")
	.copyNotebook(NotebookCopyNotebookParameterSet
		.newBuilder()
		.withGroupId(groupId)
		.withRenameAs(renameAs)
		.withNotebookFolder(null)
		.withSiteCollectionId(null)
		.withSiteId(null)
		.build())
	.buildRequest()
	.post();

```