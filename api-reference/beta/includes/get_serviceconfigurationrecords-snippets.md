#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var serviceConfigurationRecords = await graphClient.Domains["contoso.com"].ServiceConfigurationRecords.Request().GetAsync();

```