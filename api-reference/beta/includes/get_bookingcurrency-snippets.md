#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var bookingCurrencies = await graphClient.BookingCurrencies.BookingCurrencies.Request().GetAsync();
*** 

```