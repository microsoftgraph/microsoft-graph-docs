---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.education().classes("c42f493f-42b4-4e7d-8148-af894cbc518b").assignments("ad8afb28-c138-4ad7-b7f5-a6986c2655a8")
	.buildRequest()
	.delete();

```