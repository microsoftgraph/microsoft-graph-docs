---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BookingService bookingService = new BookingService();
bookingService.defaultDuration = DatatypeFactory.newInstance().newDuration("PT1H30M");
Location defaultLocation = new Location();
PhysicalAddress address = new PhysicalAddress();
address.city = "Buffalo";
address.countryOrRegion = "USA";
address.postalCode = "98052";
address.postOfficeBox = null;
address.state = "NY";
address.street = "4567 First Street";
address.additionalDataManager().put("type@odata.type", new JsonPrimitive("#microsoft.graph.physicalAddressType"));
address.type = null;
defaultLocation.address = address;
defaultLocation.coordinates = null;
defaultLocation.displayName = "Contoso Lunch Delivery";
defaultLocation.locationEmailAddress = null;
defaultLocation.additionalDataManager().put("locationType@odata.type", new JsonPrimitive("#microsoft.graph.locationType"));
defaultLocation.locationType = null;
defaultLocation.locationUri = null;
defaultLocation.uniqueId = null;
defaultLocation.additionalDataManager().put("uniqueIdType@odata.type", new JsonPrimitive("#microsoft.graph.locationUniqueIdType"));
defaultLocation.uniqueIdType = null;
bookingService.defaultLocation = defaultLocation;
bookingService.defaultPrice = 10.0d;
bookingService.additionalDataManager().put("defaultPriceType@odata.type", new JsonPrimitive("#microsoft.graph.bookingPriceType"));
bookingService.defaultPriceType = BookingPriceType.FIXED_PRICE;
bookingService.additionalDataManager().put("defaultReminders@odata.type", new JsonPrimitive("#Collection(microsoft.graph.bookingReminder)"));
LinkedList<BookingReminder> defaultRemindersList = new LinkedList<BookingReminder>();
BookingReminder defaultReminders = new BookingReminder();
defaultReminders.message = "Please be reminded that this service is tomorrow.";
defaultReminders.offset = DatatypeFactory.newInstance().newDuration("P1D");
defaultReminders.additionalDataManager().put("recipients@odata.type", new JsonPrimitive("#microsoft.graph.bookingReminderRecipients"));
defaultReminders.recipients = BookingReminderRecipients.ALL_ATTENDEES;
defaultRemindersList.add(defaultReminders);
bookingService.defaultReminders = defaultRemindersList;
bookingService.description = "Individual bento box lunch delivery";
bookingService.displayName = "Bento";
bookingService.isHiddenFromCustomers = false;
bookingService.notes = "Home-cooked special";
bookingService.postBuffer = DatatypeFactory.newInstance().newDuration("PT10M");
bookingService.preBuffer = DatatypeFactory.newInstance().newDuration("PT5M");
BookingSchedulingPolicy schedulingPolicy = new BookingSchedulingPolicy();
schedulingPolicy.allowStaffSelection = true;
schedulingPolicy.maximumAdvance = DatatypeFactory.newInstance().newDuration("P10D");
schedulingPolicy.minimumLeadTime = DatatypeFactory.newInstance().newDuration("PT10H");
schedulingPolicy.sendConfirmationsToOwner = true;
schedulingPolicy.timeSlotInterval = DatatypeFactory.newInstance().newDuration("PT1H");
bookingService.schedulingPolicy = schedulingPolicy;
bookingService.additionalDataManager().put("staffMemberIds@odata.type", new JsonPrimitive("#Collection(String)"));
LinkedList<String> staffMemberIdsList = new LinkedList<String>();
staffMemberIdsList.add("d90d1e8c-5cfe-48cf-a2d5-966267375b6a");
staffMemberIdsList.add("2f5f8794-0b29-45b5-b56a-2eb5ff7aa880");
bookingService.staffMemberIds = staffMemberIdsList;

graphClient.bookingBusinesses("Contosolunchdelivery@M365B489948.onmicrosoft.com").services()
	.buildRequest()
	.post(bookingService);

```