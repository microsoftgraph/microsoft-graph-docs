---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MailboxSettings mailboxSettings = new MailboxSettings();
mailboxSettings.additionalDataManager().put("@odata.context", new JsonPrimitive("https://graph.microsoft.com/beta/$metadata#Me/mailboxSettings"));
AutomaticRepliesSetting automaticRepliesSetting = new AutomaticRepliesSetting();
automaticRepliesSetting.status = AutomaticRepliesStatus.SCHEDULED;
DateTimeTimeZone scheduledStartDateTime = new DateTimeTimeZone();
scheduledStartDateTime.dateTime = "2016-03-20T18:00:00";
scheduledStartDateTime.timeZone = "UTC";
automaticRepliesSetting.scheduledStartDateTime = scheduledStartDateTime;
DateTimeTimeZone scheduledEndDateTime = new DateTimeTimeZone();
scheduledEndDateTime.dateTime = "2016-03-28T18:00:00";
scheduledEndDateTime.timeZone = "UTC";
automaticRepliesSetting.scheduledEndDateTime = scheduledEndDateTime;
mailboxSettings.automaticRepliesSetting = automaticRepliesSetting;

graphClient.customRequest("/me/mailboxSettings", MailboxSettings.class)
	.buildRequest()
	.patch(mailboxSettings);

```