if exist dependencies2017.zip (curl -kLO https://cdn-fastly.obsproject.com/downloads/dependencies2017.zip -f --retry 5 -z dependencies2017.zip) else (curl -kLO https://cdn-fastly.obsproject.com/downloads/dependencies2017.zip -f --retry 5 -C -)
if exist vlc.zip (curl -kLO https://cdn-fastly.obsproject.com/downloads/vlc.zip -f --retry 5 -z vlc.zip) else (curl -kLO https://cdn-fastly.obsproject.com/downloads/vlc.zip -f --retry 5 -C -)
if exist cef_binary_%CEF_VERSION%_windows64_minimal.zip (curl -kLO https://cdn-fastly.obsproject.com/downloads/cef_binary_%CEF_VERSION%_windows64_minimal.zip -f --retry 5 -z cef_binary_%CEF_VERSION%_windows64_minimal.zip) else (curl -kLO https://cdn-fastly.obsproject.com/downloads/cef_binary_%CEF_VERSION%_windows64_minimal.zip -f --retry 5 -C -)
if exist libWebRTC-%LIBWEBRTC_VERSION%-x64-Release-H264.exe (curl -u %FTP_LOGIN%:%FTP_PASSWORD% -kLO %FTP_PATH_PREFIX%/windows/libWebRTC-%LIBWEBRTC_VERSION%-x64-Release-H264.exe -f --retry 5 -z libWebRTC-%LIBWEBRTC_VERSION%-x64-Release-H264.exe) else (curl -u %FTP_LOGIN%:%FTP_PASSWORD% -kLO %FTP_PATH_PREFIX%/windows/libWebRTC-%LIBWEBRTC_VERSION%-x64-Release-H264.exe -f --retry 5 -C -)
if exist openssl-1.1.tgz (curl -kLO https://libwebrtc-community-builds.s3.amazonaws.com/openssl-1.1.tgz -f --retry 5 -z openssl-1.1.tgz) else                 (curl -kLO https://libwebrtc-community-builds.s3.amazonaws.com/openssl-1.1.tgz -f --retry 5 -C -)
7z x dependencies2017.zip -odependencies2017
7z x vlc.zip -ovlc
7z x cef_binary_%CEF_VERSION%_windows64_minimal.zip -oCEF_64
libWebRTC-%LIBWEBRTC_VERSION%-x64-Release-H264.exe /S /SD /D="%CD%\libwebrtc"
tar -xzf openssl-1.1.tgz
