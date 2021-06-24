---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.education().classes("d38ffdea-da93-46ac-90ba-d568c6073075").assignments("ad8afb28-c138-4ad7-b7f5-a6986c2655a8").submissions("d1bee293-d8bb-48d4-af3e-c8cb0e3c7fe7")
	.setUpResourcesFolder()
	.buildRequest()
	.post();

```