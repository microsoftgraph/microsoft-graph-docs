---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IEdiscoveryCaseCollectionPage cases = graphClient.compliance().ediscovery().cases()
	.buildRequest()
	.get();

```