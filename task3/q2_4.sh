echo "Waiting for 10 seconds..."
sleep 10
echo "name  size   owner   "	
ls -ohs | awk '{print $9,$1,$4}' 
echo "Task Completed"
