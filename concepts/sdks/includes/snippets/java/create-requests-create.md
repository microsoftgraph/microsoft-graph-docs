<!-- markdownlint-disable MD041 -->

```java
// POST https://graph.microsoft.com/v1.0/me/calendars

final Calendar calendar = new Calendar();
calendar.Name = "Volunteer";

final Calendar newCalendar = graphClient.me().calendars()
    .buildRequest()
    .post(calendar);
```
