#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var calendarView = await graphClient.Me.CalendarView.CalendarView.Request().GetAsync();
*** 

```