---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SourceCollection sourceCollection = new SourceCollection();
sourceCollection.displayName = "Quarterly Financials search";

graphClient.compliance().ediscovery().cases("{caseId}").sourceCollections("1a9b4145d8f84e39bc45a7f68c5c5119")
	.buildRequest()
	.patch(sourceCollection);

```