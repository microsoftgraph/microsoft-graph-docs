# Creating teams and managing members using Microsoft Graph

While there are multiple ways to create teams for Microsoft Teams via Graph API, we recommend the following approach for best results.


## Initial team creation

All teams are backed by Office 365 Groups. When creating new teams via graph, setting up a new Office 365 Group, adding all owners and members and then converting that into a team is the quickest way to get your team up and running.

1. Create an [Office 365 group](https://support.office.com/en-us/article/learn-about-office-365-groups-b565caa1-5c40-40ef-9915-60fdb2d97fa2) using the [Graph create group endpoint](https://docs.microsoft.com/en-us/graph/api/group-post-groups?view=graph-rest-beta&amp;tabs=http). If you are trying to set up a class team, please use the [Graph create EducationClass endpoint](https://docs.microsoft.com/en-us/graph/api/educationroot-post-classes?view=graph-rest-beta&amp;tabs=http). Ensure you have the right owners for the newly created team as described in Step 2.

2. Ensure the team has two or more owners, you can do so via the [Graph add owner endpoint](https://docs.microsoft.com/en-us/graph/api/group-post-owners?view=graph-rest-beta&amp;tabs=http). These should be real user accounts and not service accounts. Having two owners helps handle cases where one owners leaves the company or is unavailable to perform team management operations.

3. Add all members (and guests if necessary) to the group using the [Graph add member endpoint](https://docs.microsoft.com/en-us/graph/api/group-post-members?view=graph-rest-beta&amp;tabs=http).

4. You will need to wait 15 minutes after creating the group (step 1) before proceeding further. After the group is successfully created and all owners and members added, you can proceed to create a Microsoft Teams team using the [Graph create team from group endpoint](https://docs.microsoft.com/en-us/graph/api/team-put-teams?view=graph-rest-beta&amp;tabs=http). If you run into an error, please try waiting a few more minutes as the group creation may not be complete yet.

5. After this process finishes, all owners and members should be able to see the newly created team in their Teams client.

## Adding or managing members

To add members after a team is created, you need to use the [Office 365 Groups Graph API](https://docs.microsoft.com/en-us/graph/api/group-post-members?view=graph-rest-beta&amp;tabs=http) for membership management. Please note the following with respect to membership changes made thus:

1. Membership changes made to Office 365 Group sync to Teams via a background sync mechanism that takes 24 hours (or in some cases more).

2. The background process is triggered only if one or more users in the team (owner or member) is active in the Teams desktop client. Launching the Teams application and/or having it running constitutes activity — a user does not need to visit the team that is being modified specifically.

Note that Teams mobile clients do not trigger the membership sync. At least one user should be on the desktop client to ensure this background process goes smoothly.



## Checklist for validation

After doing all the steps above, you can use the following checklist to validate if the team was created successfully.

### Initial team creation

1. Check if the Office 365 Group backing the team is created via the Azure AD or M365 admin centers.

2. Check if the team creation succeeded via Teams admin portal.

3. Check if the team has the correct owners and members listed via Teams admin portal.

4. Check if the team owners can see the team after signing into Teams desktop or web client.

5. Check if members can see the team after signing into Teams desktop or web client.

### Adding more members

1. Check if newly members show up in the group via Azure AD or M365 admin center.

2. Check if newly added members can see the team after signing into Teams desktop or web client.



## How Office 365 Group membership changes are synchronized to Microsoft Teams

Membership changes made to an Office 365 Group backing a team via graph API or through admin portal (outside of Teams client) has to sync to Teams service for newly added users to be able to see and participate in the team. Changes made directly to the group membership are synchronized to the Teams service via a background process. This background process runs in the Teams service and is triggered by user activity in Teams desktop and web clients.

For the process to get triggered, a current owner or member of that team (someone who can see the team in the Teams client) must have the Teams desktop (ideally) or web client open. Mobile clients do not trigger this sync.

The current SLA for synchronizing membership changes made to Groups to Teams is up to 24 hours once triggered by client activity but could take longer under certain circumstances (due to service load for example).
