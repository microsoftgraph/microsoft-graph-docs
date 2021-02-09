---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AdministrativeUnit administrativeUnit = new AdministrativeUnit();
administrativeUnit.displayName = "Seattle District Technical Schools";
administrativeUnit.description = "Seattle district technical schools administration";
administrativeUnit.visibility = "HiddenMembership";

graphClient.administrativeUnits()
	.buildRequest()
	.post(administrativeUnit);

```