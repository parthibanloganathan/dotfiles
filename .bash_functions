# function to go to top level of git project
toplevel()
{
  cd `git rev-parse --show-toplevel`
}

# function to mount shared folder in /media/Windows
mw()
{
  sudo mount -t vboxsf $1 /media/Windows
}

# function to copy libSailthru from shared folder sailthru to git repo
cpsgl()
{
  rm -rf /home/parthi/Documents/Projects/Sailthru/mobile/SDK/android/libSailthru
  cp -r /media/Windows/libSailthru /home/parthi/Documents/Projects/Sailthru/mobile/SDK/android/libSailthru
}

# function to copy libSailthru from git repo to shared folder
cpgsl()
{
  rm -rf /media/Windows/libSailthru
  cp -r /home/parthi/Documents/Projects/Sailthru/mobile/SDK/android/libSailthru /media/Windows/libSailthru
}

# function to copy test from shared folder sailthru to git repo
cpsga()
{
  rm -rf /home/parthi/Documents/Projects/Sailthru/testSailthru/test
  cp -r /media/Windows/test /home/parthi/Documents/Projects/Sailthru/testSailthru
}

# function to copy testSailthru from git repo to shared folder
cpgsa()
{
  rm -rf /media/Windows/test
  cp -r /home/parthi/Documents/Projects/Sailthru/testSailthru/test /media/Windows/test
}

# function to sync fork of sailthru_board
stv()
{
  cd ~/Documents/Projects/Sailthru/Sailthru_TV/sailthru_board
  git pull upstream master
  git push origin master
}