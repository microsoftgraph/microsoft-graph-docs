#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var calendarView = await graphClient.Groups.Groups.CalendarView.Request().GetAsync();

```