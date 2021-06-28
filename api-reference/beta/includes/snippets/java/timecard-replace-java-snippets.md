---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TimeCard timeCard = new TimeCard();
timeCard.userId = "70e47528-2fae-42b5-9d8e-ee73ccd90603";
timeCard.state = TimeCardState.CLOCKED_OUT;
timeCard.confirmedBy = EnumSet.of(ConfirmedBy.NONE);
timeCard.notes = null;
TimeCardEvent clockInEvent = new TimeCardEvent();
clockInEvent.dateTime = OffsetDateTimeSerializer.deserialize("2021-05-21T21:58:41.327Z");
clockInEvent.atApprovedLocation = false;
ItemBody notes1 = new ItemBody();
notes1.contentType = BodyType.TEXT;
notes1.content = "update sample notes";
clockInEvent.notes = notes1;
timeCard.clockInEvent = clockInEvent;
TimeCardEvent clockOutEvent = new TimeCardEvent();
clockOutEvent.dateTime = OffsetDateTimeSerializer.deserialize("2021-05-21T22:01:46.205Z");
clockOutEvent.atApprovedLocation = false;
ItemBody notes2 = new ItemBody();
notes2.contentType = BodyType.TEXT;
notes2.content = "update sample notes";
clockOutEvent.notes = notes2;
timeCard.clockOutEvent = clockOutEvent;
LinkedList<TimeCardBreak> breaksList = new LinkedList<TimeCardBreak>();
TimeCardBreak breaks = new TimeCardBreak();
breaks.breakId = "BRK_138f4751-68b1-44c1-aca2-2b26cba9e73f";
breaks.notes = null;
TimeCardEvent start = new TimeCardEvent();
start.dateTime = OffsetDateTimeSerializer.deserialize("2021-05-21T21:59:59.328Z");
start.atApprovedLocation = false;
ItemBody notes4 = new ItemBody();
notes4.contentType = BodyType.TEXT;
notes4.content = "update sample notes";
start.notes = notes4;
breaks.start = start;
TimeCardEvent end = new TimeCardEvent();
end.dateTime = OffsetDateTimeSerializer.deserialize("2021-05-21T22:01:10.205Z");
end.atApprovedLocation = false;
ItemBody notes5 = new ItemBody();
notes5.contentType = BodyType.TEXT;
notes5.content = "update sample notes";
end.notes = notes5;
breaks.end = end;
breaksList.add(breaks);
timeCard.breaks = breaksList;

graphClient.teams("fd15cad8-80f6-484f-9666-3caf695fbf32").schedule().timeCards("TCK_3cd7413f-0337-433b-9a49-da0923185b3f")
	.buildRequest()
	.put(timeCard);

```