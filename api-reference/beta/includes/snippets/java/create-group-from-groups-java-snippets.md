---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Group group = new Group();
group.additionalDataManager().put("@odata.id", new JsonPrimitive("https://graph.microsoft.com/odata/groups('dc3d2ce5-7c5e-4dca-a0ef-2145bf6e53ef')"));

graphClient.policies().mobileDeviceManagementPolicies("dc3d2ce5-7c5e-4dca-a0ef-2145bf6e53ef").includedGroups().references()
	.buildRequest()
	.post(group);

```