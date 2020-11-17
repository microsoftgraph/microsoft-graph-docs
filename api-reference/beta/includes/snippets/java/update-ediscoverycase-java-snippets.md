---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EdiscoveryCase ediscoveryCase = new EdiscoveryCase();
ediscoveryCase.displayName = "My Case 1 - Renamed";
ediscoveryCase.description = "Updated description";
ediscoveryCase.externalId = "Updated externalId";

graphClient.compliance().ediscovery().cases("061b9a92-8926-4bd9-b41d-abf35edc7583")
	.buildRequest()
	.patch(ediscoveryCase);

```