#!/vendor/bin/sh
# wangxuguang add for preload color config xml

#if [ ! -f "/data/vendor/display/exist" ]; then
    echo "preloading color config ..." 

    PP_CALIB_DATA0=qdcm_calib_data_ft8756_huaxian_fhd_video_mode_dsi_panel

    cp /vendor/etc/$PP_CALIB_DATA0 /data/vendor/display/$PP_CALIB_DATA0.xml

    chmod 660 /data/vendor/display/$PP_CALIB_DATA0.xml

    chown system.graphics /data/vendor/display/$PP_CALIB_DATA0.xml

    echo "done" > /data/vendor/display/exist
    chmod 777 /data/vendor/display/exist
    sync
    echo "preloading color config done"

#fi
