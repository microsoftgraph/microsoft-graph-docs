---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AdministrativeUnit administrativeUnit = graphClient.directory().administrativeUnits("{id}")
	.buildRequest()
	.get();

```