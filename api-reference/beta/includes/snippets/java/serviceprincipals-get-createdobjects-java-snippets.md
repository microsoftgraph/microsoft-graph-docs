---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IDirectoryObjectCollectionWithReferencesPage createdObjects = graphClient.servicePrincipals("{id}").createdObjects()
	.buildRequest()
	.get();

```