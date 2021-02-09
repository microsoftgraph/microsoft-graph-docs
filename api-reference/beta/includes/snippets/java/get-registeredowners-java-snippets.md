---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IDirectoryObjectCollectionWithReferencesPage registeredOwners = graphClient.devices("{id}").registeredOwners()
	.buildRequest()
	.get();

```