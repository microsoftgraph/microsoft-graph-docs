#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var calendarView = await graphClient.Groups.Groups.CalendarView.Request().GetAsync();
*** 

```