---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RiskyUser riskyUser = graphClient.riskyUsers("c2b6c2b9-dddc-acd0-2b39-d519d803dbc3")
	.buildRequest()
	.get();

```