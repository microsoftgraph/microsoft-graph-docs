---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Attachment attachment = graphClient.me().messages("AAMkAGUzY5QKgAAA=").attachments("AAMkAGUzY5QKgAAABEgAQAISJOe1FEqdNsMEQmpZjRW8=")
	.buildRequest()
	.get();

```