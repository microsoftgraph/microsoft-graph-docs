#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var appointments = await graphClient.BookingBusinesses.BookingBusinesses.Appointments.Request().GetAsync();
*** 

```