
# Like: m1_merged_0062.png
# 1926x964
ffmpeg -framerate 30 -pattern_type glob -i 'anno*merged_*.png' -s:v 1926x964 -c:v libx264 -profile:v high -crf 23 -pix_fmt yuv420p -r 30 MA_molecular_vibrations.mp4 
