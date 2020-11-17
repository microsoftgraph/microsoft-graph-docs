---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookFormatProtection workbookFormatProtection = new WorkbookFormatProtection();
workbookFormatProtection.locked = true;
workbookFormatProtection.formulaHidden = true;

graphClient.me().drive().items("{id}").workbook().names("{name}")
	.range().format().protection()
	.buildRequest()
	.patch(workbookFormatProtection);

```