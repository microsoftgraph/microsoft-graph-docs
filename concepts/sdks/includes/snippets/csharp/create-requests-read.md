```csharp
    // GET https://graph.microsoft.com/v1.0/me

     User user = await graphClient.Me  
                .Request()
                .GetAsync();  
```