---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IDirectoryObjectCollectionWithReferencesPage members = graphClient.directoryRoles("23f3b4b4-8a29-4420-8052-e4950273bbda").members()
	.buildRequest()
	.get();

```