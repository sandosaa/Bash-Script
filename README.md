# Bash Script
A repo specified for small bash script projects help in daily use.

<hr>

## Until now 
- **Cruft Remover**
- **Folder Organiser**
- **Toolkit**
### Cruft Remover
A utility helps you to keep your system clear of unnecessary files by allowing you to delete files that haven't been modified for a certain period of time or more (by default 90 days) & Search in subfolders with maximum 2 depth and not allowed to delete from root folders, **Please use it wisely**.
### Folder Organiser
 A Folder organiser to organise the contents of desired folder (in current folder our another one by including its path).
### Toolkit
A tool to present the user with a menu for running available scrips.
 
## Get started
### Git clone
#### In your Terminal 
```
git clone https://github.com/sandosaa/Bash-Script.git
```
#### Then change directory & give the execution permission to scripts
```
cd Bash-Script
chmod +x *.sh
```
#### For usage
```
./tooikit.sh
```
### For best practice
#### Instead of having to navigate to the folder's location every time, you can store its path so that you can launch it from anywhere.

```
nano ~/.bashrc
```
#### It will open a window for editing .bashrc, in the end of lines, add this this line: 
##### If you cloned the repo in home directory, then copy and paste it, otherwise add its path.
```
export PATH="$PATH:$HOME/Bash-Script"
```
##### Change `/path/to/script_director` to your repo directory.
```
export PATH="$PATH:/path/to/script_director"
```
#### Then load the settings
```
source ~/.bashrc
```
#### And Voilà, you can run anyone by just its name  (without ./ before it) e.g.,
```
$ folder_organiser.sh
```
## License

Take it !
