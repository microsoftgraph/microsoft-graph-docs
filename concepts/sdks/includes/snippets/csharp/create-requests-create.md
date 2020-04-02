```csharp
    GraphServiceClient graphClient = new GraphServiceClient( authProvider );
    
    var calendar = new Calendar
    {
    	Name = "Volunteer"
    };
    
    newCalendar = await graphClient.Me.Calendars
    	.Request()
    	.AddAsync(calendar);
```