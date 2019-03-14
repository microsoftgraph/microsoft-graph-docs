#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var bookingCurrencies = await graphClient.BookingCurrencies["USD"].Request().GetAsync();

```