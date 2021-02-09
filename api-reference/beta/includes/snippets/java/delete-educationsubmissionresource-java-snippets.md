---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.education().classes("11021").assignments("19002").submissions("850f51b7").resources("f2387c3b-ec39-4bf2-a399-d7242677f024")
	.buildRequest()
	.delete();

```