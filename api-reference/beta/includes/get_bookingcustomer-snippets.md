#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var customers = await graphClient.BookingBusinesses.BookingBusinesses.Customers.Customers.Request().GetAsync();

```