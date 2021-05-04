---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AdministrativeUnitDeltaCollectionPage delta = graphClient.administrativeUnits()
	.delta()
	.buildRequest()
	.get();

```