---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Attachment attachment = new Attachment();
attachment.additionalDataManager().put("@odata.type", new JsonPrimitive("#microsoft.graph.fileAttachment"));
attachment.name = "menu.txt";
attachment.contentBytes = "base64bWFjIGFuZCBjaGVlc2UgdG9kYXk=";

graphClient.me().events("AAMkAGI1AAAt9AHjAAA=").attachments()
	.buildRequest()
	.post(attachment);

```