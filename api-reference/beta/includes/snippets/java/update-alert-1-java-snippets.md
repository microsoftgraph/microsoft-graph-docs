---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Alert alert = new Alert();
alert.assignedTo = "String";
alert.closedDateTime = OffsetDateTimeSerializer.deserialize("String (timestamp)");
LinkedList<String> commentsList = new LinkedList<String>();
commentsList.add("String");
alert.comments = commentsList;
alert.feedback = AlertFeedback.UNKNOWN;
alert.status = AlertStatus.UNKNOWN;
LinkedList<String> tagsList = new LinkedList<String>();
tagsList.add("String");
alert.tags = tagsList;
SecurityVendorInformation vendorInformation = new SecurityVendorInformation();
vendorInformation.provider = "String";
vendorInformation.vendor = "String";
alert.vendorInformation = vendorInformation;

graphClient.security().alerts("{alert_id}")
	.buildRequest()
	.patch(alert);

```