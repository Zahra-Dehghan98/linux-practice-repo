#!/bin/bash

#step 1 
pathfolder="/home/zhra/exam_results/audit/"
mkdir -p "$pathfolder"
cd "$pathfolder"
touch "$pathfolder/notes.txt"
pwd > "$pathfolder/cwd.txt"

#step 2
cat /etc/passwd > users.txt
grep  "/bin/bash" /etc/passwd > bash_users.txt
head -5 /etc/passwd | sed 's/\/bin\/bash/\/usr\/bin\/zsh/g' > shell_preview.txt

#step 3
uname -s > sysinfo.txt
uname -r >> sysinfo.txt
arch >> sysinfo.txt
cat /etc/group | head -3 > group_summary.txt
cat /etc/group | tail -2 >> group_summary.txt

#step 4
sudo find /etc -name "*.conf" -type f > conf_files.txt
ls -lhs /var/log | head -11 > top_logs.txt

#step 5
sudo cp /etc/hosts "$pathfolder/hosts.bak"
sudo chmod 700 "$pathfolder/hosts.bak"
sudo chmod 600 "$pathfolder/hosts.bak"
sudo ls -l hosts.bak > hosts_perm.txt

#step 6
find "$pathfolder" -name "*.txt" ! -name "hosts_perm.txt" ! -name "notes.txt" -type f -delete


