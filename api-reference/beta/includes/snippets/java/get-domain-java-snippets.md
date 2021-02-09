---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Domain domain = graphClient.domains("contoso.com")
	.buildRequest()
	.get();

```