<!-- markdownlint-disable MD002 MD025 MD041 -->

1. Open your command line interface (CLI) in the directory where PartsInventoryConnector.csproj is located.
2. Run the following command to initialize the user secrets for the project.

    ```dotnetcli
    dotnet user-secrets init
    ```

3. Run the following commands to store your app ID, app secret, and tenant ID in the user secret store.
  
    ```dotnetcli
      dotnet user-secrets set appId "YOUR_APP_ID_HERE"
      dotnet user-secrets set appSecret "YOUR_APP_SECRET_HERE"
      dotnet user-secrets set tenantId "YOUR_TENANT_ID_HERE"
    ```
