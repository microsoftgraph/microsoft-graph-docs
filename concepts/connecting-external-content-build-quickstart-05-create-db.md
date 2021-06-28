<!-- markdownlint-disable MD002 MD025 MD041 -->

1. Open your command line interface (CLI) in the directory where PartsInventoryConnector.csproj is located.
2. Run the following commands:

  ```dotnetcli
  dotnet ef migrations add InitialCreate
  dotnet ef database update
  ```

> [!NOTE]
> Run the following commands if a schema changes in the CSV file, and reflect those changes into the SQLite database.

```dotnetcli
dotnet ef database drop
dotnet ef database update
```
