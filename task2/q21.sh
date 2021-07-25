# create 'some_file' having a creation date of 21Aug 2020:
echo "NEWER files than 21st august 2020 22:40"
touch -t 202008222240 some_file
# all files created after this date
find . -newer some_file
#older 
echo "OLDER Files than 3rd july 2020"
find -depth -not -newermt 2020-07-03
