---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ItemAttachment attachment = new ItemAttachment();
attachment.name = "Holiday event";
Event item = new Event();
item.subject = "Discuss gifts for children";
ItemBody body = new ItemBody();
body.contentType = BodyType.HTML;
body.content = "Let's look for funding!";
item.body = body;
DateTimeTimeZone start = new DateTimeTimeZone();
start.dateTime = "2016-12-02T18:00:00";
start.timeZone = "Pacific Standard Time";
item.start = start;
DateTimeTimeZone end = new DateTimeTimeZone();
end.dateTime = "2016-12-02T19:00:00";
end.timeZone = "Pacific Standard Time";
item.end = end;
attachment.item = item;

graphClient.me().events("{AAMkAGI1AAAt9AHjAAA=}").attachments()
	.buildRequest()
	.post(attachment);

```