#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var bookingBusinesses = await graphClient.BookingBusinesses.BookingBusinesses.Request().GetAsync();
*** 

```