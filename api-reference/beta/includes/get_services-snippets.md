#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var services = await graphClient.BookingBusinesses.BookingBusinesses.Services.Request().GetAsync();

```