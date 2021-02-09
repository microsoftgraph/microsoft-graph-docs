---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.identity().conditionalAccess().namedLocations("1c4427fd-0885-4a3d-8b23-09a899ffa959")
	.buildRequest()
	.delete();

```