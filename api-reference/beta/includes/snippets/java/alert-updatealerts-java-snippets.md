---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Alert> valueList = new LinkedList<Alert>();
Alert value = new Alert();
value.assignedTo = "String";
value.closedDateTime = "String (timestamp)";
LinkedList<String> commentsList = new LinkedList<String>();
commentsList.add("String");
value.comments = commentsList;
AlertFeedback feedback = new AlertFeedback();
feedback.additionalDataManager().put("@odata.type", new JsonPrimitive("microsoft.graph.alertFeedback"));
value.feedback = feedback;
value.id = "String (identifier)";
AlertStatus status = new AlertStatus();
status.additionalDataManager().put("@odata.type", new JsonPrimitive("microsoft.graph.alertStatus"));
value.status = status;
LinkedList<String> tagsList = new LinkedList<String>();
tagsList.add("String");
value.tags = tagsList;
SecurityVendorInformation vendorInformation = new SecurityVendorInformation();
vendorInformation.provider = "String";
vendorInformation.vendor = "String";
value.vendorInformation = vendorInformation;

valueList.add(value);

graphClient.security().alerts()
	.updateAlerts(valueList)
	.buildRequest()
	.post();

```