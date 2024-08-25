@echo off

where /q wt

if %errorlevel% == 0 (
	wt -d "Maple2.Server.World" --title "World Server" dotnet run ; ^
	nt -d "Maple2.Server.Login" --title "Login Server" dotnet run ; ^
	nt -d "Maple2.Server.Web" --title "Web Server" dotnet run ; ^
	nt -d "Maple2.Server.Game" --title "Game Server" dotnet run
) else (
	start cmd /k "cd "Maple2.Server.World" & title World Server & dotnet run"
	start cmd /k "cd "Maple2.Server.Login" & title Login Server & dotnet run"
	start cmd /k "cd "Maple2.Server.Web" & title Web Server & dotnet run"
	start cmd /k "cd "Maple2.Server.Game" & title Game Server & dotnet run"
)
