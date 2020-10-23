<!-- markdownlint-disable MD041 -->

```csharp
//  GET https://graph.microsoft.com/v1.0/users/{user-id}/events

var events = await graphClient.Me.Events
    .Request()
    .Header("Prefer",@"outlook.timezone=""Pacific Standard Time""")
    .Select( e => new {
        e.Subject,
        e.Body,
        e.BodyPreview
    })
    .GetAsync();
```
