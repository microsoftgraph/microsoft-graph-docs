---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ListItem listItem = new ListItem();
FieldValueSet fields = new FieldValueSet();
fields.Title = "Widget";
fields.Color = "Purple";
fields.Weight = 32;
listItem.fields = fields;

graphClient.sites("{site-id}").lists("{list-id}").items()
	.buildRequest()
	.post(listItem);

```