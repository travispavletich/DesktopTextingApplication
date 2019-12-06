mkdir "C:\Program Files\DesktopTextingApplication"
mkdir "C:\Program Files\DesktopTextingApplication\server"
mkdir "C:\Program Files\DesktopTextingApplication\client"

git clone http://github.com/travispavletich/TextingServer.git

dotnet publish "TextingServer\WebServer\WebServer" -c Release -o "C:\Program Files\DesktopTextingApplication\server" -r win-x64

@RD \S \Q TextingServer
git clone "http://github.com/travispavletich/TextingClientApp.git" "C:\Program Files\DesktopTextingApplication\client"

cd "C:\Program Files\DesktopTextingApplication\client"
npm install