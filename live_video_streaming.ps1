Set-Window -ProcessName Raid -X 0 -Y 0 -Width 1280 -Height 720 -Passthru;

# ffmpeg -f gdigrab -framerate 10 -i title="Raid: Shadow Legends" -b:v 3M -vcodec ffv1 C:/temp/test.mkv;

# ffmpeg -f gdigrab -framerate 10 -i title="Raid: Shadow Legends" -b:v 3M -vcodec libx264 -tune zerolatency -b 900k -f mpegts http://10.1.0.102:1234

# see https://github.com/vbence/stream-m
# see https://stackoverflow.com/questions/45588064/error-transparency-encoding-with-auto-alt-ref-does-not-work-when-converting-a

ffmpeg -re -f gdigrab -framerate 10 -i title="Raid: Shadow Legends" -vcodec libvpx -auto-alt-ref 0 -f webm http://localhost:9080/publish/first?password=secret

# -g 52 -vb 448k



#ffmpeg -re -i univac.webm -vcodec copy -f webm http://localhost:9080/publish/first?password=secret