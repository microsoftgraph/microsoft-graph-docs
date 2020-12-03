---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IAdministrativeUnitDeltaCollectionPage delta = graphClient.administrativeUnits()
	.delta()
	.buildRequest()
	.get();

```