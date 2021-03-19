---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LegalHold legalHold = new LegalHold();
legalHold.description = "String";
IdentitySet createdBy = new IdentitySet();
legalHold.createdBy = createdBy;
legalHold.isEnabled = false;
legalHold.status = LegalHoldStatus.PENDING;
legalHold.contentQuery = "String";
LinkedList<String> errorsList = new LinkedList<String>();
errorsList.add("String");
legalHold.errors = errorsList;
legalHold.displayName = "String";

graphClient.compliance().ediscovery().cases("{caseId}").legalHolds()
	.buildRequest()
	.post(legalHold);

```