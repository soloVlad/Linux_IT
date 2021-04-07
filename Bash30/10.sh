#! bin/bash

echo "Enter the name of the process you want to kill:"
read proc_name

keep_pid=$(pidof $proc_name)
kill $keep_pid

exit 0
