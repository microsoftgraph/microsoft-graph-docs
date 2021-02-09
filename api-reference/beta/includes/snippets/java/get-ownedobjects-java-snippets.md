---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IDirectoryObjectCollectionWithReferencesPage ownedObjects = graphClient.servicePrincipals("{id}").ownedObjects()
	.buildRequest()
	.get();

```