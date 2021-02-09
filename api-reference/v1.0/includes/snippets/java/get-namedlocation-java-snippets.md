---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

NamedLocation namedLocation = graphClient.identity().conditionalAccess().namedLocations("0854951d-5fc0-4eb1-b392-9b2c9d7949c2")
	.buildRequest()
	.get();

```