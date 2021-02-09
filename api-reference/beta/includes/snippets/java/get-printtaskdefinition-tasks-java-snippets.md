---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IPrintTaskCollectionPage tasks = graphClient.print().taskDefinitions("92d72a3d-cad7-4809-8924-43833282b079").tasks()
	.buildRequest()
	.get();

```