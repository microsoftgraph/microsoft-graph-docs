---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Presence presence = graphClient.users("66825e03-7ef5-42da-9069-724602c31f6b").presence()
	.buildRequest()
	.get();

```