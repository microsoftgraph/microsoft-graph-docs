<!-- markdownlint-disable MD041 -->

```csharp
// GET https://graph.microsoft.com/v1.0/me

var user = await graphClient.Me
    .Request()
    .GetAsync();
```
