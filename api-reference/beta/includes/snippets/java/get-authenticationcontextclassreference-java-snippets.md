---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthenticationContextClassReference authenticationContextClassReference = graphClient.identity().conditionalAccess().authenticationContextClassReferences("c1")
	.buildRequest()
	.get();

```