#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var staffMembers = await graphClient.BookingBusinesses.BookingBusinesses.StaffMembers.Request().GetAsync();
*** 

```