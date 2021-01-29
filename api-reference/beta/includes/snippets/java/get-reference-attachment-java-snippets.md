---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Attachment attachment = graphClient.me().events("AAMkAGE1M88AADUv0uAAAG=").attachments("AAMkAGE1Mg72tgf7hJp0PICVGCc0g=")
	.buildRequest()
	.get();

```