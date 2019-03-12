#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var calendarGroups = await graphClient.Me.CalendarGroups.CalendarGroups.Request().GetAsync();
*** 

```