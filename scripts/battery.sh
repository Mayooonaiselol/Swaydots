 #!/bin/sh

# low and critical battery level.
# at low battery level, notification will be sent to inform the user.
# at critcal battery level, urgent notification will be sent and if user does not plugin within the given Backup time (mentioned below), system will perform critical level action
# range = 0 - 100
# default: low=10, critcal=5
low=15
critical=5

# the time (in seconds) given to user to backup or plugin power, after critical level is reached
# default: backup=20
backupTime=25

# time (in seconds) after which the script is called again to check battery level
# default: sleepTime=30
sleepTime=60

# Select the critical Action which will be performed when battery is critical
# Values: suspend, poweroff, hibernate, hybrid-sleep
# default: criticalAction="suspend"
criticalAction="suspend"

# variable (boolean) to check if user is notified or not. Used within the script. DO NOT CHANGE or script might malfunction
# default: notified=0
notified=0

while true ; do
    # get battery-level(0-100%) and state(discharging/charging)
    battery=$(cat /sys/class/power_supply/BAT*/capacity)
    state=$(cat /sys/class/power_supply/BAT*/status)
    #echo $battery
    #echo $state
    #echo $notified
    if [ "$state" = "Discharging" ] ; then
        # if battery discharging and below low level then send notification
        if [ $battery -gt $critical ] && [ $battery -le $low ] && [ $notified -eq 0 ] ; then        
            notify-send 'Battery Low' 'Plugin to Recharge' --icon=battery-low
            let notified=1
        # if battery discharging and below critical level then send notification and wait for user action
        elif [ $battery -le $critical ] ; then
            tempTime=$(( $backupTime*1000 ))
            notify-send "Turning off system in $backupTime sec(s)" 'Backup Data or Plugin to Recharge' --icon=battery-low --urgency=critical --expire-time=$tempTime
            sleep $backupTime
            tempState=$(cat /sys/class/power_supply/BAT*/status)
            # if battery still discharging, then perform critical action
            if [ "$tempState" = "Discharging" ] ; then
                executionCommand="loginctl $criticalAction"
                eval $executionCommand
            # if battery is now pluged in, then do not perform critical action
            else
                let notified=0
            fi      
        fi
    else
        let notified=0
    fi
    sleep $sleepTime
done

exit 0
