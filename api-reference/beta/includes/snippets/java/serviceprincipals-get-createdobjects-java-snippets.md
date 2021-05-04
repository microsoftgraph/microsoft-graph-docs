---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectoryObjectCollectionWithReferencesPage createdObjects = graphClient.servicePrincipals("{id}").createdObjects()
	.buildRequest()
	.get();

```