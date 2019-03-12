#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var customers = await graphClient.BookingBusinesses.BookingBusinesses.Customers.Request().GetAsync();
*** 

```