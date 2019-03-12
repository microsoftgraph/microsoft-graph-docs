#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var schemaExtensions = await graphClient.SchemaExtensions.Request().GetAsync();
*** 

```