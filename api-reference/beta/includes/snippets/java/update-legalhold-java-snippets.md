---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LegalHold legalHold = new LegalHold();
legalHold.description = "This is a description for a legalHold";

graphClient.compliance().ediscovery().cases("{caseId}").legalHolds("{legalholdId}")
	.buildRequest()
	.patch(legalHold);

```