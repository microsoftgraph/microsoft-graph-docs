#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var bookingCurrencies = await graphClient.BookingCurrencies.BookingCurrencies.Request().GetAsync();
*** 

```