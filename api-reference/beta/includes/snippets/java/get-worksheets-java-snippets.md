---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookWorksheetCollectionPage worksheets = graphClient.me().drive().items("{id}").workbook().worksheets()
	.buildRequest()
	.get();

```