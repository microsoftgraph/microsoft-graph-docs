---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<AssignedLicense> addLicensesList = new LinkedList<AssignedLicense>();

LinkedList<UUID> removeLicensesList = new LinkedList<UUID>();
removeLicensesList.add(UUID.fromString("skuId-value-1"));
removeLicensesList.add(UUID.fromString("skuId-value-2"));

graphClient.groups("1ad75eeb-7e5a-4367-a493-9214d90d54d0")
	.assignLicense(addLicensesList,removeLicensesList)
	.buildRequest()
	.post();

```