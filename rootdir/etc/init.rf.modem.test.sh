# Script to start "modem_test" on the device, which has a very rudimentary
# shell.
#
setprop sys.oppo.rf.modemtest true

base=/system
export CLASSPATH=$base/framework/OppoModemTests.jar
exec app_process $base/bin com.android.oppo.ModemOnlineTest "$@"

