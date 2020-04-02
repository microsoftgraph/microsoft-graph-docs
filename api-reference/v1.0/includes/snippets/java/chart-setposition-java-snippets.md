---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String startCell = "startCell-value";

String endCell = "endCell-value";

graphClient.me().drive().items("{id}").workbook().worksheets("{id|name}").charts("{name}")
	.setPosition(startCell,endCell)
	.buildRequest()
	.post();

```