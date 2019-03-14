#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getOffice365ActivationsUserDetail = await graphClient.Reports.GetOffice365ActivationsUserDetail().Request().GetAsync();

```