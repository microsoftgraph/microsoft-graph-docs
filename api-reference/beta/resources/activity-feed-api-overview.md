# Use the activity feed REST API

You can use the activity feed API in Microsoft Graph to resume a user's actiity across devices and platforms. Activity feed API requests are performed on behalf of a user via [delegated permissions](../../../concepts/permissions_reference.md#delegated-permissions-application-permissions-and-effective-permissions) and the [user activity permission](../../../concepts/permissions_reference.md), which can be used with either personal or work and school accounts. 

User activities are represented by the [activity](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/projectrome_activity) resource and are organized in a time-based feed represented by the collection me/activities. 
<!-- Add missing content.
Each activity represents a unique... 
-->
## What makes a great user activity?

User activities don’t just launch apps — they are deep links into specific content within your app. The user activities you create can not only be used in your own app, but will also appear in Cortana and Windows Timeline — driving more app reengagement and making it easier for your users to continue using your app across multiple devices.  

### What should become an activity? 

Because every app is different, it's up to each app developer to understand the best way to map actions within your application to user activities. For example, games might create an activity for each campaign, document authoring apps might create an activity for each unique document, and line-of-business apps might create an activity for each workflow. 

Apply the following guidlines as you define activitites in your app:

**DO:** Record a single activity for a group of related user actions. 
If your application is used for a sequence of related content, it probably makes sense to record a single activity for the entire engagement session.  

*Playlist scenarios:* This is especially relevant for music playlists or TV shows — a single user activity can be updated to show your progress. In this case, you will have a single user activity with multiple [history items](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/projectrome_historyitem) representing periods of engagement across multiple days or weeks.  

**DO:** Store user data to the cloud. 
If you want to support cross-device activities, you need to make sure the content required to reengage this activity is stored to a cloud location. For example, if you publish an activity each time a user edits a document, the document should be stored in the cloud as opposed to locally on the user's device in order to enable cross-device reengagement.  

**DO NOT:** Create a user activity for actions that users do not need to resume in the future. 
If your application is used to complete simple, one-time operations that do not persist status for you to track in the future, you probably do not need to write a user activity. 

To be clear, even though user activities appear in Windows Timeline, this is not designed as a versioning tool — choosing a document-based activity should always show the latest version of that document (including changes that were made by another user.)

**DO NOT:** Create a user activity for actions completed by *other users*. 
If someone sends the user a message, or @mentions the user within your app, you should not write a new activity. These interactions are better served by surfacing notifications.  

*Collaboration scenarios:* If multiple people are working on the same activity (such as a Word document), there will be cases when another user has made changes to the document after you last edited it. In this case, app developers might want to update the visual elements in the activity to reflect changes made to the document. To do this, the app might update the existing activity without creating a new history item. 

>**Note:** If you're publishing activities for a web application, it's important to include both an `activationURL` and a `fallbackURL` for each of your activities. The activities will launch the user back into your app as expected from Microsoft experiences like Windows Timeline. 

## App interaction patterns and user activities 
The user activities that you create will vary based on the interaction pattern of your app. While every app is different, most will fall into one of the following interaction patterns: 

* **Document-based apps** — Create one activity per document with one or more history records reflecting periods of use. It is important to update your activity card as changes are made to the document. 
* **Media playback apps** — Create one activity per logical grouping of content such as a playlist, program, or standalone content. 
* **Games** — Create one activity for each saved game or world. If your game supports only a single sequence of levels, you can write the same activity over time, although you might want to update your card to show your latest progress or achievements. 
* **Utility apps** — If there is nothing within your app that users would want to resume, you should not publish activities. A good example is a simple single-purpose app like calculator. 
* **Line-of-business apps** — Many apps exist for managing simple tasks or workflows. Create one activity for each separate workflow accessed through your app. For example, each expense report would be a separate activity, because you might want to click that activity to see if it was approved.

*Some complex apps include multiple interaction patterns. You might want to follow different user activity creation patterns for different scenarios handled by your app.*

<!-- Add content or remove H2.
## Common use cases 
-->

## Next steps

- See the [activity resource](https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/resources/projectrome_activity) and define your app's activities to help users resume important tasks.
- Explore the [adaptive card samples](http://adaptivecards.io/samples/) samples for ideas to make your activities **pop**.  
- Try the API in the [Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer).

**Looking for more ideas?** 
- See [how Microsoft experiences are using activities](https://channel9.msdn.com/events/Build/2017/B8108).
- Learn about [the activity feed API and pick up where I left off](https://channel9.msdn.com/Events/Windows/Windows-Developer-Day-Fall-Creators-Update/WinDev011).
