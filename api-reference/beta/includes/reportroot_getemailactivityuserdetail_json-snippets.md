#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getEmailActivityUserDetail = await graphClient.Reports.GetEmailActivityUserDetail().Request().GetAsync();

```