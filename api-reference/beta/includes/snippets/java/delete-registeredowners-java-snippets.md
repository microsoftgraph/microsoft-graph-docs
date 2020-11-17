---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.devices("{id}").registeredOwners("{id}").reference()
	.buildRequest()
	.delete();

```