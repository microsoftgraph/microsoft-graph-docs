---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectoryObjectCollectionWithReferencesPage domainNameReferences = graphClient.domains("{domain-name}").domainNameReferences()
	.buildRequest()
	.get();

```