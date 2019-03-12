#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var staffMembers = await graphClient.BookingBusinesses.BookingBusinesses.StaffMembers.Request().GetAsync();

```