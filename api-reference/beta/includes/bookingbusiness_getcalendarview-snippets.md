#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var calendarView = await graphClient.BookingBusinesses.BookingBusinesses.CalendarView.Request().GetAsync();
*** 

```