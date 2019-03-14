#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var myRequests = await graphClient.PrivilegedApproval.MyRequests().Request().GetAsync();

```