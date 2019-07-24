---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IDirectoryObjectCollectionPage domainNameReferences = graphClient.domains("contoso.com").domainNameReferences()
	.buildRequest()
	.get();

```