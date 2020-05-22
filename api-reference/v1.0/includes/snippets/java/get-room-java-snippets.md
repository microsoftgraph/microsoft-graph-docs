---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Place place = graphClient.places("3162F1E1-C4C0-604B-51D8-91DA78989EB1")
	.buildRequest()
	.get();

```