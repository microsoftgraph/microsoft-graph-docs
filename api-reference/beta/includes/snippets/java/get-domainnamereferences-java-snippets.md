---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IDirectoryObjectCollectionWithReferencesPage domainNameReferences = graphClient.domains("contoso.com").domainNameReferences()
	.buildRequest()
	.get();

```