---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IRiskyUserCollectionPage riskyUsers = graphClient.riskyUsers()
	.buildRequest()
	.get();

```