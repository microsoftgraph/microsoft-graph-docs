# Authenticate Microsoft Graph endpoints using converged authentication (preview)

### Preview documentation

There are features and functionality of the converged authentication model that are not yet supported in the public preview period. You should be aware of them if you are building applications during the public preview. For more information, see [Limitations and restrictions of the converged authentication model preview](https://azure.microsoft.com/en-us/documentation/articles/active-directory-v2-limitations/).


## Signing in Microsoft account and Azure AD users with a single authentication model

The converged authentication model preview enables you to create apps that accept both work and school (Azure AD) as well as personal (Microsoft account) identities.

In the past, an app developer who wanted to support both Microsoft accounts and Azure Active Directory was required to integrate with two completely separate systems. Now you can build apps using the converged authentication model, which allows you to sign users in with both types of accounts. One simple process allows you to immediately reach an audience that spans millions of users with both personal and work/school accounts.   

Currently, your apps can access the following information via the Microsoft Graph using the converged authentication model preview:


| Data              | Endpoint                                       |
|:------------------|:-----------------------------------------------|
| User profile      | `https://graph.microsoft.com/v1.0/me`          |
| Outlook mail      | `https://graph.microsoft.com/v1.0/me/messages` |
| Outlook contacts  | `https://graph.microsoft.com/v1.0/me/contacts` |
| Outlook calendars | `https://graph.microsoft.com/v1.0/me/events`   |
| OneDrive          | `https://graph.microsoft.com/v1.0/me/drive`    |

with more Microsoft services being added in the near future.

## Microsoft Graph API authentication scopes

The table below lists the authentication scopes to use with the converged authentication model preview. For more information about using scopes with the converged authentication model, and how it differs from using resources in Azure AD, see [Scopes, not resources](https://azure.microsoft.com/en-us/documentation/articles/active-directory-v2-compare/#scopes-not-resources).


| **Scope**             | **Permission**                        | **Description**                                                                                                                                         |
|:----------------------|:--------------------------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------|
| `User.Read`           | Enable sign-in and read user profile  | Allows users to sign-in to the app, and allows the app to read the profile. It also allow the app to read basic company information of signed-in users. |
| `User.ReadWrite`      | Read and write access to user profile | Allows the app to read the profile of signed-in users, and to update profile information on behalf of signed-in users.                                  |
| `Mail.Read`           | Read user mail                        | Allows this app to read messages in user mailboxes.                                                                                                     |
| `Mail.ReadWrite`      | Read and write access to user mail    | Allows the app to read, update, create, and delete messages in user mailboxes.                                                                          |
| `Mail.Send`           | Send mail as a user                   | Allows the app to send messages as users in the organization.                                                                                           |
| `Contacts.Read`       | Read user contacts                    | Allows the app to read user contacts.                                                                                                                   |
| `Contacts.ReadWrite`  | Have full access to user contacts     | Allows the app to read, update, create and delete user contacts.                                                                                        |
| `Calendars.Read`      | Read user calendars                   | Allows the app to read events in user calendars.                                                                                                        |
| `Calendars.ReadWrite` | Have full access to user calendars    | Allows the app to read, update, create, and delete events in user calendars.                                                                            |
| `Files.Read`          | Read users' files                     | Allows the application to read the current user's files.                                                                                                |
| `Files.ReadWrite`     | Edit or delete users' files           | Allows the app to edit or delete the current user's files.                                                                                              |
| `openid`              | Sign users in                         | Allows users to sign in to the app and allows the app to see basic user profile information.                                                            |
| `offline_access`      | Read and write user's information     | Allows the app to see and update user's data, even when the user is not actively using the app.                                                         |

**Note**: it is required to pass the resource URL of 'https://graph.microsoft.com' as pre-fix for the scope string. For example, `https://graph.microsoft.com/Files.ReadWrite` to use the Files.ReadWrite scope.

## Next steps

[Register an app to use the converged authentication model](https://azure.microsoft.com/en-us/documentation/articles/active-directory-v2-app-registration/)

## Learn more

[What's new about the converged authentication model](https://azure.microsoft.com/en-us/documentation/articles/active-directory-v2-compare)

[Limitations and restrictions in the converged authentication model preview](https://azure.microsoft.com/en-us/documentation/articles/active-directory-v2-limitations/)

More [Converged authentication preview documentation](https://azure.microsoft.com/en-us/documentation/articles/?service=active-directory&term=app+model+v2.0) on [azure.microsoft.com](https://azure.microsoft.com)
