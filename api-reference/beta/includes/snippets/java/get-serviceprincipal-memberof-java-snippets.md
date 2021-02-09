---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IDirectoryObjectCollectionWithReferencesPage memberOf = graphClient.servicePrincipals("{id}").memberOf()
	.buildRequest()
	.get();

```