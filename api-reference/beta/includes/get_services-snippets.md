#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var services = await graphClient.BookingBusinesses.BookingBusinesses.Services.Request().GetAsync();
*** 

```