---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Permission permission = new Permission();
LinkedList<String> rolesList = new LinkedList<String>();
rolesList.add("read");
permission.roles = rolesList;

graphClient.sites("{sitesId}").permissions("{permissionId}")
	.buildRequest()
	.patch(permission);

```