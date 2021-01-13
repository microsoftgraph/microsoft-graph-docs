---
title: "Create an Azure Active Directory app"
description: "Create an Azure Active Directory application registration for communicating with Microsoft 365"
localization_priority: Normal
author: waldekmastykarz
---

# Create an Azure Active Directory app to use with the Microsoft Graph Toolkit

Microsoft Graph, the API that you use to connect to Microsoft 365, is secured with OAuth 2.0. In order to connect your app to Microsoft 365, you will need to create an app in Azure Active Directory (Azure AD) and grant this app permissions to access specific resources on behalf of the person using your app. This topic describes how to register and configure a web application to use with Microsoft Graph Toolkit.

## Add new application registration in Azure Active Directory

To create an application in Azure Active Directory, you need to add a new application registration, and then configure an app name and URL location.

To create the app in Azure Active Directory:

1. Go to the Azure portal at https://portal.azure.com.
1. From the menu, select **Azure Active Directory**.
1. From the Azure Active Directory menu, select **App registrations**.
1. From the top menu, select the **New registration** button.
1. Enter the name for your app; for exampe, `My M365 app`.
1. For the type of [supported account types](/azure/active-directory/develop/single-and-multi-tenant-apps#who-can-sign-in-to-your-app), select **Accounts in any organizational directory (Any Azure AD directory - Multitenant) and personal Microsoft accounts (e.g. Skype, Xbox)**.
1. In the **Redirect URI** field, in the dropdown, select **Web**, and in the URL field, enter `http://localhost:3000`.
1. Confirm changes by selecting the **Register** button.

## Enable OAuth implicit flow

In most cases, you will use Microsoft Graph Toolkit in client-side applications that consist only of client-side code. Because client-side apps can't store secrets securely, you need to use [OAuth implicit flow](/azure/active-directory/develop/v2-oauth2-implicit-grant-flow?WT.mc_id=m365-10340-wmastyka), which assumes an app's identity based on its ID and URL.

1. In the Azure Portal, open your newly created app registration.
1. From the menu, choose **Authentication**.
1. In the **Implicit grant** section, enable both **Access tokens** and **ID tokens** options.
1. Confirm your changes by choosing the **Save** button.

## Next steps

- [Build a web application](./build-a-web-app.md) (vanilla JavaScript)
- [Build a Microsoft Teams tab](./build-a-microsoft-teams-tab.md)
- [Use the Toolkit with React](./use-toolkit-with-react.md)
- [Use the Toolkit with Angular](./use-toolkit-with-angular.md)
