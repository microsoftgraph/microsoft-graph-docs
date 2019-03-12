#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var calendarGroups = await graphClient.Me.CalendarGroups.CalendarGroups.Request().GetAsync();
*** 

```