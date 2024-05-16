#!/system/bin/sh

while true; do
    logcat -s CoreBackPreview -T "$(date "+%m-%d %H:%M:%S.000")" | grep -q "com.starlingbank.android/com.starlingbank.startup.DeviceRootedActivity"

    if [ $? -eq 0 ]; then
        am start --activity-clear-top -n com.starlingbank.android/com.starlingbank.startup.StartupActivity
    fi

    sleep 5
done