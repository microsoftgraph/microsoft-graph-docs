---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IPrintUserIdentityCollectionPage allowedUsers = graphClient.print().shares("{id}").allowedUsers()
	.buildRequest()
	.get();

```