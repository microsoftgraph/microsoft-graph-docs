```typescript
    const options = {
    	authProvider,
    };
    
    const client = Client.init(options);
    
    const calendar = {
      name: "Volunteer"
    };
    
    let newCalendar = await client.api('/me/calendars')
    	.post(calendar);
```