---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var meetingAttendanceReport = await graphClient.Me.OnlineMeetings["{onlineMeeting-id}"].MeetingAttendanceReport
	.Request()
	.GetAsync();

```