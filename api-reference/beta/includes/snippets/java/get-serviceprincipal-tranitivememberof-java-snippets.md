---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IDirectoryObjectCollectionWithReferencesPage transitiveMemberOf = graphClient.servicePrincipals("{id}").transitiveMemberOf()
	.buildRequest()
	.get();

```