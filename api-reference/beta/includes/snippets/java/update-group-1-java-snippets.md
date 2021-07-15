---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Group group = new Group();
group.description = "Contoso Life v2.0";
group.displayName = "Contoso Life Renewed";

graphClient.groups("{id}")
	.buildRequest()
	.patch(group);

```