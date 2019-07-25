---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String address = "address-value";

graphClient.me().drive().items("{id}").workbook().worksheets("{id|name}")
	.range()
	.buildRequest()
	.post();

```