---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookNamedItem workbookNamedItem = new WorkbookNamedItem();
workbookNamedItem.type = "type-value";
workbookNamedItem.scope = "scope-value";
workbookNamedItem.comment = "comment-value";
Json value = new Json();
workbookNamedItem.value = value;
workbookNamedItem.visible = true;

graphClient.me().drive().items("{id}").workbook().names("{name}")
	.buildRequest()
	.patch(workbookNamedItem);

```