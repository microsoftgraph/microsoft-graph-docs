---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<String> addLicensesList = new LinkedList<String>();

LinkedList<String> removeLicensesList = new LinkedList<String>();
removeLicensesList.add("skuId-value-1");
removeLicensesList.add("skuId-value-2");

graphClient.groups("1ad75eeb-7e5a-4367-a493-9214d90d54d0")
	.assignLicense(addLicensesList,removeLicensesList)
	.buildRequest()
	.post();

```