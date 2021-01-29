---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ItemAddress itemAddress = new ItemAddress();
itemAddress.displayName = "Home";
PhysicalAddress detail = new PhysicalAddress();
detail.type = PhysicalAddressType.HOME;
detail.postOfficeBox = null;
detail.street = "221B Baker Street";
detail.city = "London";
detail.state = null;
detail.countryOrRegion = "United Kingdom";
detail.postalCode = "E14 3TD";
itemAddress.detail = detail;

graphClient.me().profile().addresses()
	.buildRequest()
	.post(itemAddress);

```