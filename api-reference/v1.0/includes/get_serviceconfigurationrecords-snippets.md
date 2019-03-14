#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var serviceConfigurationRecords = await graphClient.Domains["{domain-name}"].ServiceConfigurationRecords.Request().GetAsync();

```