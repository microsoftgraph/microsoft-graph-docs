#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var staffMembers = await graphClient.BookingBusinesses.BookingBusinesses.StaffMembers.Request().GetAsync();
*** 

```