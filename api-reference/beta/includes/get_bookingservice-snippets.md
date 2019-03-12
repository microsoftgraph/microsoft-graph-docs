#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var services = await graphClient.BookingBusinesses.BookingBusinesses.Services.Services.Request().GetAsync();
*** 

```