---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String name = "name-value";

graphClient.me().drive().items("{id}").workbook().worksheets()
	.add(name)
	.buildRequest()
	.post();

```