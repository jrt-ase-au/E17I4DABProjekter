Dette SSDT (SQL Server Data Tool) projekt har ikke opsat en "Connection String" til en database.
Derfor skal du udføre følgende trin, inden du har en køreklar database til at teste resten af E17I4DAB Solution!

1: Åben en Command Prompt/Kommandolinje/PowerShell
2: Indtast følgend kommando: "sqllocaldb i"
3: Denne kommmando viser, eventuelt, følgende: (Her i en PowerShell)
    PS C:\WINDOWS\system32> sqllocaldb i
       MSSQLLocalDB
       ProjectsV13
    PS C:\WINDOWS\system32>
4: Mangler database "ProjectsV13" udføres følgende kommando: "sqllocaldb c ProjectsV13"
   som opretter en DB server med instansnavnet "ProjectsV13" response:
   PS C:\WINDOWS\system32> sqllocaldb c ProjectsV13
      LocalDB instance "ProjectsV13" created with version 13.1.4001.0.
   PS C:\WINDOWS\system32>
5: I VS2017 åbnes SQL Server Object Explore og via "SQL Server->Add SQL server" kaldes
   forbindelsesvinduet fra. 
   I dette vindue vælges fanen "Browse" derefter findes "ProjectsV13" databasen under "Local".
   Forbind til databasen
6: Vælg og åben "ProjectsV13" databasen i "SQL Server Object Explore"
7: Højreklik "Databases->Add new Database" og oprette databasen "CraftManDB"
8: I VS2017 "Solution Explorer" vælger "Properties->Debug" for projektet "CraftManDB"
9: og under "Target Connection String" vælges "Edit". Som i punkt 5 forbidnes til "ProjectsV13" db-server
   og i "Datbase Name" vælges "CraftManDB"
   Connection String skal se sålede ud: 
       "Data Source=(localdb)\ProjectsV13;Initial Catalog=CraftManDB;Integrated Security=True;Persist Security Info=False;Pooling=False;MultipleActiveResultSets=False;Connect Timeout=60;Encrypt=False;TrustServerCertificate=True"
