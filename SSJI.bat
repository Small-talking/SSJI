@echo off
title Simple Serverjars Jar Installer.
color 0f
:mainaction
cls
set mcDir=""
set jarVersion=""
set jarType=""
set link=""
set mypath=%cd%
echo Welcome to the simplified Serverjars Installer!
echo ---
echo Developed by : Small-talking on Github
echo Made for : Windows (Although you may be able to run this with WINE, I dunno.)
echo Version : 1.0B
echo ---
echo.
set mcDir="C:\Program Files (x86)\Minecraft Launcher\game"
if not exist %mcDir% (
    echo Seems like you don't have the classic Minecraft Launcher installed. Please do not pirate the game, as you don't support the original developers that way!
    echo.
    echo Maybe you use another Launcher which is not located in the default directory, but please do not use "cracked" accounts.
    set link=https://minecraft.net/download
    goto decision
)
goto proceed
:decision
echo.
set /p action=Redirect you to the minecraft purchasing page? (yes/no): 
echo.
if %action% equ yes (
    start %link%
    echo Go and install the original launcher, and buy yourself an account to support Minecraft's Creators, %username%!
    goto proceed
)
if %action% equ no (
    echo That's fine!
    echo But, when you change your mind, please go ahead and buy the original game.
    echo See ya, Pirate!
    goto proceed
)
goto mainaction
:proceed
echo As you might know, ServerJars has lots of different server versions to download.
echo Which one would you like to download, and most importantly, what type?
echo Proxies are used for creating larger networks. You use bukkit based jars to create a single server.
set /p action=What server type do you want to install? (proxy/bukkitbased):
if %action%==proxy goto bungee
if %action%==bukkitbased goto bukkit
goto mainaction
:bungee
echo.
echo Alright, we'll get you a bungeecord server jar!
set /p action=What type do you want to install? (bungeecord/waterfall/velocity):
set jarType=%action%
echo Cool!
set /p actionV=And what version do you want to install? Please only type in the rough version. Ex: 1.19 instead of 1.19.3, 1.18 instead of 1.18.1:
set jarVersion=%actionV%
echo %jarVersion%
echo %jarType%
set link=https://serverjars.com/api/fetchJar/proxies/%jarType%/%jarVersion%
start %link%
cls
echo.
echo A browser tab with your jar file should have opened itself now! Have fun and Thanks for using my project!
echo You can now close this window.
pause
exit
echo.
:bukkit
echo.
echo Alright, we'll get you a bukkit based server jar!
echo First off all, there are lots of different jars that you can choose from! I would recommend PaperSpigot or Purpur. (On their newest versions!)
echo.
color 0c
echo Reminder: Please don't use classic bukkit. Bukkit often breaks and generally does not have the best optimization settings.
echo.
color 0f
set /p action=Anyways, what jar type do you want to install now? (bukkit/paper/spigot/purpur):
set jarType=%action%
echo Cool!
set /p actionV=And what version do you want to install? (Ex: 1.19.3, 1.16.5, 1.17.1 or any other one!):
set jarVersion=%actionV%
echo %jarVersion%
echo %jarType%
set link=https://serverjars.com/api/fetchJar/servers/%jarType%/%jarVersion%
start %link%
cls
echo.
echo A browser tab with your jar file should have opened itself now! Have fun and thanks for using my project!
echo You can now close this window.
pause
exit