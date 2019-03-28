
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

const staffMembers = {
    @odata.type:"#microsoft.graph.bookingStaffMember",
    colorIndex:1,
    displayName:"Dana Swope",
    emailAddress:"danas@contoso.com",
    role@odata.type:"#microsoft.graph.bookingStaffRole",
    role:"externalGuest",
    useBusinessHours:true,
    workingHours@odata.type:"#Collection(microsoft.graph.bookingWorkHours)",
    workingHours:[
        {
            @odata.type:"#microsoft.graph.bookingWorkHours",
            day@odata.type:"#microsoft.graph.dayOfWeek",
            day:"monday",
            timeSlots@odata.type:"#Collection(microsoft.graph.bookingWorkTimeSlot)",
            timeSlots:[
                {
                    @odata.type:"#microsoft.graph.bookingWorkTimeSlot",
                    end:"17:00:00.0000000",
                    start:"08:00:00.0000000"
                }
            ]
        },
        {
            @odata.type:"#microsoft.graph.bookingWorkHours",
            day@odata.type:"#microsoft.graph.dayOfWeek",
            day:"tuesday",
            timeSlots@odata.type:"#Collection(microsoft.graph.bookingWorkTimeSlot)",
            timeSlots:[
                {
                    @odata.type:"#microsoft.graph.bookingWorkTimeSlot",
                    end:"17:00:00.0000000",
                    start:"08:00:00.0000000"
                }
            ]
        },
        {
            @odata.type:"#microsoft.graph.bookingWorkHours",
            day@odata.type:"#microsoft.graph.dayOfWeek",
            day:"wednesday",
            timeSlots@odata.type:"#Collection(microsoft.graph.bookingWorkTimeSlot)",
            timeSlots:[
                {
                    @odata.type:"#microsoft.graph.bookingWorkTimeSlot",
                    end:"17:00:00.0000000",
                    start:"08:00:00.0000000"
                }
            ]
        },
        {
            @odata.type:"#microsoft.graph.bookingWorkHours",
            day@odata.type:"#microsoft.graph.dayOfWeek",
            day:"thursday",
            timeSlots@odata.type:"#Collection(microsoft.graph.bookingWorkTimeSlot)",
            timeSlots:[
                {
                    @odata.type:"#microsoft.graph.bookingWorkTimeSlot",
                    end:"17:00:00.0000000",
                    start:"08:00:00.0000000"
                }
            ]
        },
        {
            @odata.type:"#microsoft.graph.bookingWorkHours",
            day@odata.type:"#microsoft.graph.dayOfWeek",
            day:"friday",
            timeSlots@odata.type:"#Collection(microsoft.graph.bookingWorkTimeSlot)",
            timeSlots:[
                {
                    @odata.type:"#microsoft.graph.bookingWorkTimeSlot",
                    end:"17:00:00.0000000",
                    start:"08:00:00.0000000"
                }
            ]
        }
    ]
}
;

client.api('/bookingBusinesses/{id}/staffMembers')
	.version('beta').post({bookingStaffMember : staffMembers});

```