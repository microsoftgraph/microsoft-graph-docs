---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CaseCollectionPage cases = graphClient.compliance().ediscovery().cases()
	.buildRequest()
	.get();

```