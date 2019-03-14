#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var calendarView = await graphClient.Groups["02bd9fd6-8f93-4758-87c3-1fb73740a315"].CalendarView.Request().GetAsync();

```