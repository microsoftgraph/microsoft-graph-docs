---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LegalHold legalHold = graphClient.compliance().ediscovery().cases("{caseId}").legalHolds("{legalholdId}")
	.buildRequest()
	.get();

```