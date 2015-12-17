# montage MAPbI_mode.png  MAPbBr_mode.png  MAPbCl_mode.png  -geometry 1024x1024 MAPbI_Br_Cl_mode_montage_horizontal.png
# montage -tile 1x MAPbI_mode.png  MAPbBr_mode.png  MAPbCl_mode.png  -geometry 1024x1024 MAPbI_Br_Cl_mode_montage_vertical.png

# Looks like, via identify: m06_merged_0000.png PNG 1926x964 1926x964+0+0 8-bit sRGB 102KB 0.000u 0:00.000
montage -tile 3x6 m*_merged_0000.png -geometry 1926x964 MA_MolecularVibrations_big_picture-mergedview.png

#Individual files look like: m1_v1_0000.png PNG 1926x1928 1926x1928+0+0 8-bit sRGB 28.4KB 0.000u 0:00.000

montage -tile 3x6 m*_v1_0000.png -geometry 964x964 MA_MolecularVibrations_big_picture_view1.png
montage -tile 3x6 m*_v2_0000.png -geometry 964x964 MA_MolecularVibrations_big_picture_view2.png


montage -tile 3x6 m*_merged_0048.png -geometry 1926x964 MA_MolecularVibrations_Projected_big_picture-mergedview.png
montage -tile 3x6 m*_v1_0048.png -geometry 964x964 MA_MolecularVibrations_Projected_big_picture_view1.png
montage -tile 3x6 m*_v2_0048.png -geometry 964x964 MA_MolecularVibrations_Projected_big_picture_view2.png

#1926x2288 --> 963x1144
montage -tile 3x6 annotated_m*_v1_0048.png -geometry 963x1144 MA_MolecularVibrations_Projected_big_picture_view1-annotated.png
