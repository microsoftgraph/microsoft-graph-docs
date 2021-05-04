---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ContentType contentType = new ContentType();
contentType.name = "docSet";
contentType.description = "custom docset";
ContentType base = new ContentType();
base.name = "Document Set";
base.id = "0x0120D520";
contentType.base = base;
contentType.group = "Document Set Content Types";

graphClient.sites("{id}").contentTypes()
	.buildRequest()
	.post(contentType);

```