
```Javascript

// Some callback function
const authProvider: AuthProvider = (callback: AuthProviderCallback) => { 
	// Your logic for getting and refreshing accessToken 
	// Error should be passed in case of error while authenticating 
	// accessToken should be passed upon successful authentication 
	callback(error, accessToken);
};

let options: Options = {
		authProvider,
};

const client = Client.init(options);

const events = {
  subject: "Plan summer company picnic",
  body: {
    contentType: "HTML",
    content: "Let's kick-start this event planning!"
  },
  start: {
      dateTime: "2017-08-30T11:00:00",
      timeZone: "Pacific Standard Time"
  },
  end: {
      dateTime: "2017-08-30T12:00:00",
      timeZone: "Pacific Standard Time"
  },
  attendees: [
    {
      emailAddress: {
        address: "DanaS@contoso.onmicrosoft.com",
        name: "Dana Swope"
      },
      type: "Required"
    },
    {
      emailAddress: {
        address: "AlexW@contoso.onmicrosoft.com",
        name: "Alex Wilber"
      },
      type: "Required"
    }
  ],
  location: {
    displayName: "Conf Room 3; Fourth Coffee; Home Office",
    locationType: "Default"
  },
  locations: [
    {
      displayName: "Conf Room 3"
    },
    {
      displayName: "Fourth Coffee",
      address: {
        street: "4567 Main St",
        city: "Redmond",
        state: "WA",
        countryOrRegion: "US",
        postalCode: "32008"
      },
      coordinates: {
        latitude: 47.672,
        longitude: -102.103
      }
    },
    {
      displayName: "Home Office"
    }
  ]

}
;

client.api('/me/events')
	.version('beta').post({event : events});

```