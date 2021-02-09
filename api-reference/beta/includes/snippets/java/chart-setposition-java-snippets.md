---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

JsonElement startCell = JsonParser.parseString("startCell-value");

JsonElement endCell = JsonParser.parseString("endCell-value");

graphClient.me().drive().items("{id}").workbook().worksheets("{id|name}").charts("{name}")
	.setPosition(startCell,endCell)
	.buildRequest()
	.post();

```