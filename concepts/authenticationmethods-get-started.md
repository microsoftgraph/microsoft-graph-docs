---
title: "Get started with the Microsoft Graph authentication methods API"
description: "The authentication methods API in Microsoft Graph gives organizations the ability to programmatically manage their users' authentication methods, getting users registered to do multi-factor authentication (MFA) and self-service password reset (SSPR)."
author: "mmcla"
localization_priority: Priority
ms.prod: "microsoft-identity-platform"
---

# Get started with the Microsoft Graph authentication methods API

[Authentication methods](/azure/active-directory/authentication/concept-authentication-methods) are the ways that users authenticate in Azure Active Directory (Azure AD). Authentication methods in Azure AD include password and phone (for example, SMS and voice calls), which are manageable in Microsoft Graph today, among many others such as FIDO2 security keys and the Microsoft Authenticator app. Authentication methods are used in primary, second-factor, and step-up authentication, and also in the self-service password reset (SSPR) process.

You can use the authentication method APIs to manage a user's authentication methods. For example, you can:

* Add a phone number for a user, who can then use that number for SMS and voice call authentication if they're enabled to use it by policy
* Update or delete the phone number assigned to a user
* Enable or disable the number for SMS sign-in
* Reset a user's password

The APIs are a key tool to manage your users' authentication methods.

In this tutorial, you'll learn how to:

> [!div class="checklist"]
> * Authenticate to Azure AD with the right roles and permissions
> * Check the user's authentication methods
> * Add new phone numbers for the user
> * Remove a phone number from the user
> * Reset the user's password

## Step 1: Authenticate to Azure AD with the right roles and permissions

Using your favorite [tool for interacting with Microsoft Graph](use-the-api.md#tools-for-interacting-with-microsoft-graph), sign in using an account with one of these roles:

* Global administrator
* Privileged authentication administrator
* Authentication administrator

Next, modify your permissions. We'll use [UserAuthenticationMethod.ReadWrite.All](permissions-reference.md#user-authentication-method-permissions-preview) for this tutorial, so make sure it's enabled in Graph Explorer or your app.

Once the scope is assigned and consented, you can start using the API. The examples here use a standard user named Avery Howard. You should use a preexisting test account or create a new one following [these instructions](/azure/active-directory/fundamentals/add-users-azure-active-directory#add-a-new-user). These APIs are live so don't test them on real users.

## Step 2: Check the user's authentication methods

Make a call to see the user's authentication methods. Take the URL to see a user's profile and add `/authentication/methods`:

### Request

```http
GET https://graph.microsoft.com/beta/users/avery.howard@wingtiptoysonline.com/authentication/methods
```

### Response

```json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('avery.howard%40wingtiptoysonline.com')/authentication/methods",
    "value": [
        {
            "@odata.type": "#microsoft.graph.passwordAuthenticationMethod",
            "id": "28c10230-6103-485e-b985-444c60001490",
            "password": null,
            "creationDateTime": null
        }
    ]
}
```

## Step 3: Add new phone numbers for the user

From the previous step, a new user (Avery) only has a password registered. To assign a new phone number for Avery to use, make a `POST` request with the phone type and number in the body. To tell the system that a phone number is being added, you'll also need to change the end of the URL from `methods` to `phoneMethods`.

### Request

```http
POST https://graph.microsoft.com/beta/users/avery.howard@wingtiptoysonline.com/authentication/phoneMethods
Content-Type: application/json
```

```json
{
    "phoneType": "mobile",
    "phoneNumber": "+1 2065550123"
}
```

### Response

```json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('avery.howard%40wingtiptoysonline.com')/authentication/phoneMethods/$entity",
    "id": "3179e48a-750b-4051-897c-87b9720928f7",
    "phoneNumber": "+1 2065550123",
    "phoneType": "mobile",
    "smsSignInState": "ready"
}
```

To add Avery's office number, you'll `POST` again to the same URL but update the phone type and number:

### Request

```http
POST https://graph.microsoft.com/beta/users/avery.howard@wingtiptoysonline.com/authentication/phoneMethods
Content-Type: application/json
```

```json
{
    "phoneType": "office",
    "phoneNumber": "+1 4255550199"
}
```

### Response

```json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('avery.howard%40wingtiptoysonline.com')/authentication/phoneMethods/$entity",
    "id": "e37fc753-ff3b-4958-9484-eaa9425c82bc",
    "phoneNumber": "+1 4255550199",
    "phoneType": "office",
    "smsSignInState": "notSupported"
}
```

Do one more `GET` to the phone methods URL to see all of Avery's phone numbers:

### Request

```http
GET https://graph.microsoft.com/beta/users/avery.howard@wingtiptoysonline.com/authentication/phoneMethods
```

### Response

```json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('avery.howard%40wingtiptoysonline.com')/authentication/phoneMethods",
    "value": [
        {
            "id": "e37fc753-ff3b-4958-9484-eaa9425c82bc",
            "phoneNumber": "+1 4255550199",
            "phoneType": "office",
            "smsSignInState": "notSupported"
        },
        {
            "id": "3179e48a-750b-4051-897c-87b9720928f7",
            "phoneNumber": "+1 2065550123",
            "phoneType": "mobile",
            "smsSignInState": "ready"
        }
    ]
}
```

Confirm that you can see both numbers as expected.

## Step 4: Remove a phone number from the user

In this scenario, Avery is now working from home you need to remove their office number from their account. You need to call `DELETE` on the office phone URL, which you can create by appending the office phone's ID to the phone methods URL. Look at Avery's list of phones above: the office phone ID starts with "e37f".

### Request

```http
DELETE https://graph.microsoft.com/beta/users/avery.howard@wingtiptoysonline.com/authentication/phoneMethods/e37fc753-ff3b-4958-9484-eaa9425c82bc
```

There's no data in the response because there's no more office phone as intended. You can confirm it's gone by looking at all of Avery's methods, which is the same `GET` that was made previously:

### Request

```http
GET https://graph.microsoft.com/beta/users/avery.howard@wingtiptoysonline.com/authentication/methods
```

### Response

```json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('avery.howard%40wingtiptoysonline.com')/authentication/methods",
    "value": [
        {
            "@odata.type": "#microsoft.graph.phoneAuthenticationMethod",
            "id": "3179e48a-750b-4051-897c-87b9720928f7",
            "phoneNumber": "+1 2065550123",
            "phoneType": "mobile",
            "smsSignInState": "ready"
        },
        {
            "@odata.type": "#microsoft.graph.passwordAuthenticationMethod",
            "id": "28c10230-6103-485e-b985-444c60001490",
            "password": null,
            "creationDateTime": null
        }
    ]
}
```

As expected, the user is now back to only having one mobile phone and a password.

## Step 5: Reset the user's password

In this scenario, Avery has forgotten their password and you need to reset it for them. To reset, you'll make a `POST` to their password's URL (see the ID starting with "28c1" above in Avery's list of authentication methods), specifying the "resetPassword" action. Provide the new password in the request body.

### Request

```http
POST https://graph.microsoft.com/beta/users/avery.howard@wingtiptoysonline.com/authentication/passwordMethods/28c10230-6103-485e-b985-444c60001490/resetPassword
Content-Type: application/json
```

```json
{
    "newPassword": "29sdjfw#fajsdA_a_3an3223"
}
```

### Response

``` http
Location: https://graph.microsoft.com/beta/users/ed178e23-7447-4892-baf8-fc46f8af26ce/authentication/operations/74bfa1a6-c0e0-4957-8c37-f91048f4959e?aadgdc=BY01P&aadgsu=ssprprod-a
```

Because this is syncing the password down to Active Directory in the tenant's on-prem infrastructure, it might take a few minutes, so you have an address where you can check to see if it's complete. This address is in the location header of the response, and to see the status do a `GET` on that URL.

### Request

```http
GET https://graph.microsoft.com/beta/users/ed178e23-7447-4892-baf8-fc46f8af26ce/authentication/operations/74bfa1a6-c0e0-4957-8c37-f91048f4959e?aadgdc=BY01P&aadgsu=ssprprod-a
```

### Response

```json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('ed178e23-7447-4892-baf8-fc46f8af26ce')/authentication/operations/$entity",
    "id": "74bfa1a6-c0e0-4957-8c37-f91048f4959e",
    "createdDateTime": "2020-05-14T00:23:40Z",
    "lastActionDateTime": "2020-05-14T00:23:41Z",
    "status": "succeeded",
    "statusDetail": "ResetSuccess",
    "resourceLocation": "https://graph.microsoft.com/beta/users/ed178e23-7447-4892-baf8-fc46f8af26ce/authentication/methods/28c10230-6103-485e-b985-444c60001490"
}
```

And success! You've walked through seeing a user's profile, their auth methods, adding and removing phone numbers, and resetting their password. Now you're ready to go manage your own users' methods.

## API reference

Looking for the API reference for authentication methods?

* See [Azure AD authentication methods API overview](/graph/api/resources/authenticationmethods-overview?view=graph-rest-beta)

## Next steps

* Find out how to [use the authentication method REST APIs](/graph/api/resources/authenticationmethods-overview?view=graph-rest-beta).
* Use Azure AD to [authenticate](./auth/index.yml) to Microsoft Graph.
* Integrate [Azure AD sign-in](https://azure.microsoft.com/develop/identity/signin/) into your app or website.
* See the [Changelog](changelog.md) for information about what's new in the Azure AD APIs.
* Explore [examples](https://developer.microsoft.com/graph/graph/examples) for more ideas about how to use Microsoft Graph.