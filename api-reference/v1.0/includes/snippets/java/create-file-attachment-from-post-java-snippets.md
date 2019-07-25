---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Attachment attachment = new Attachment();
attachment.additionalDataManager().put("@odata.type", new JsonPrimitive("#microsoft.graph.fileAttachment"));
attachment.name = "name-value";
attachment.contentBytes = "base64-contentBytes-value";

graphClient.groups("{id}").threads("{id}").posts("{id}").attachments()
	.buildRequest()
	.post(attachment);

```