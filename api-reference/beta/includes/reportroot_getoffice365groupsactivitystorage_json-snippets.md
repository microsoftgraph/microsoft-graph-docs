#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getOffice365GroupsActivityStorage = await graphClient.Reports.GetOffice365GroupsActivityStorage().Request().GetAsync();

```