#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var calendarView = await graphClient.BookingBusinesses.BookingBusinesses.CalendarView.Request().GetAsync();

```