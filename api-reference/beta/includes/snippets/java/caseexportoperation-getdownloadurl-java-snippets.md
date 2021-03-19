---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String string = graphClient.compliance().ediscovery().cases("99e865fc-e29f-479a-ba83-9e58eb017103").operations("63926d4779c243458902328d83f61f53").microsoft.graph.ediscovery.caseExportOperation()
	.getDownloadUrl()
	.buildRequest()
	.get();

```