SET GOOS=windows
SET GOARCH=amd64
go build -ldflags "-s -w"  -o lego_amd64.exe
upx -9 hardware_amd64.exe
SET GOARCH=386
go build -ldflags "-s -w"  -o lego_x86.exe
upx -9 lego_x86.exe

SET GOOS=linux
SET GOARCH=amd64
go build -ldflags "-s -w"  -o lego_amd64
upx -9 lego_amd64
SET GOARCH=386
go build -ldflags "-s -w"  -o lego_x86
upx -9 lego_x86