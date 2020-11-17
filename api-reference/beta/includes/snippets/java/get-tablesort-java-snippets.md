---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookTableSort workbookTableSort = graphClient.me().drive().items("{id}").workbook().tables("{id|name}").sort()
	.buildRequest()
	.get();

```