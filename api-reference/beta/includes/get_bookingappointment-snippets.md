#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var appointments = await graphClient.BookingBusinesses.BookingBusinesses.Appointments.Appointments.Request().GetAsync();
*** 

```