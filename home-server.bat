echo off
cls
cd /d %github%\home-server
npm run start -- %1
PAUSE
