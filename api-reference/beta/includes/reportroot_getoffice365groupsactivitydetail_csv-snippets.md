#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getOffice365GroupsActivityDetail = await graphClient.Reports.GetOffice365GroupsActivityDetail().Request().GetAsync();

```