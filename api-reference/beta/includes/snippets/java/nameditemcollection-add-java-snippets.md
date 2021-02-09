---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String name = "test5";

JsonElement reference = JsonParser.parseString("=Sheet1!$F$15:$N$27");

String comment = "Comment for the named item";

graphClient.me().drive().items("{id}").workbook().names()
	.add(name,reference,comment)
	.buildRequest()
	.post();

```