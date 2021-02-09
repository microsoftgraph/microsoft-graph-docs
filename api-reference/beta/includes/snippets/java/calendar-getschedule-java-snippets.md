---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Prefer", "outlook.timezone=\"Pacific Standard Time\""));

LinkedList<String> schedulesList = new LinkedList<String>();
schedulesList.add("adelev@contoso.onmicrosoft.com");
schedulesList.add("meganb@contoso.onmicrosoft.com");

DateTimeTimeZone startTime = new DateTimeTimeZone();
startTime.dateTime = "2019-03-15T09:00:00";
startTime.timeZone = "Pacific Standard Time";

DateTimeTimeZone endTime = new DateTimeTimeZone();
endTime.dateTime = "2019-03-15T18:00:00";
endTime.timeZone = "Pacific Standard Time";

int availabilityViewInterval = 60;

graphClient.me().calendar()
	.getSchedule(schedulesList,endTime,startTime,availabilityViewInterval)
	.buildRequest( requestOptions )
	.post();

```