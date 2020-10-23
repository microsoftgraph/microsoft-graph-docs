---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String name = "test7";

String formula = "=SUM(Sheet2!$A$1+Sheet2!$A$2)";

String comment = "Comment for the named item";

graphClient.me().drive().items("{id}").workbook().names()
	.addFormulaLocal(name,formula,comment)
	.buildRequest()
	.post();

```