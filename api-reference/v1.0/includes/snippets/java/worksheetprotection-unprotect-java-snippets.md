---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String password = "password-value";

graphClient.me().drive().items("{id}").workbook().worksheets("{id|name}").protection()
	.unprotect()
	.buildRequest()
	.post();

```