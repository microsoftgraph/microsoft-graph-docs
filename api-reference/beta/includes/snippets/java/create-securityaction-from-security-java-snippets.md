---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SecurityAction securityAction = new SecurityAction();
securityAction.name = "BlockIp";
securityAction.actionReason = "Test";
LinkedList<KeyValuePair> parametersList = new LinkedList<KeyValuePair>();
KeyValuePair parameters = new KeyValuePair();
parameters.name = "IP";
parameters.value = "1.2.3.4";
parametersList.add(parameters);
securityAction.parameters = parametersList;
SecurityVendorInformation vendorInformation = new SecurityVendorInformation();
vendorInformation.provider = "Windows Defender ATP";
vendorInformation.vendor = "Microsoft";
securityAction.vendorInformation = vendorInformation;

graphClient.security().securityActions()
	.buildRequest()
	.post(securityAction);

```