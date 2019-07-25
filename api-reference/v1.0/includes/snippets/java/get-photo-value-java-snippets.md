---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Stream Stream = graphClient.users("{id|userPrincipalName}").photo().content()
	.buildRequest()
	.get();

```