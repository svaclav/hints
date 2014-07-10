#### There are various obvious things which I can't remember:

* read web articles in **vim**
 
  `elinks -dump http://some-url/ | vim - -R -u NONE`

* get my **bash aliases** quickly

  `cd /tmp && git clone https://github.com/wencaaa/confs.git && cd confs/ && source .bashrc`
  
* see **git summary** again after git pull

  `git diff --stat master@{1} master`
  
* **grant access** in MySQL
 
  `GRANT ALL ON demo.* TO user1@localhost IDENTIFIED BY 'mypassword'; flush privileges;`

* ubuntu **upgrade**
 
  `apt-get install update-manager-core; do-release-upgrade -d`

* **kill** TCP connection
 
  `lsof -i tcp:22 | grep LISTEN | awk '{print $2}' | xargs kill`

* check **which process** runs every second

  `apt-get install sysstat; pidstat 1`
  
* **search in git** where a change was done
 
  `git log -S pattern`

* **print data** from line 2 to 5
 
  ``sed -n '2,5p' text``

* top sorted by **swap usage**
 
  `top then press O followed by p then enter`

* ssh **local port forward**
 
  `ssh -nNT -L 8080:localhost:80 user@example.com`

* pacemaker **move service to second node** in cluster
 
  `crm resource move service node2`

* git - see one **file in two branches**
 
  `git difftool testing:manifests/params.pp production:manifests/params.pp`

* git **test commit**
 
  `git commit --allow-empty -m "test commit"`

* quick way to **list just directories**

  `ls -al | grep "^d"`
  
* creates **linux kernel .config** with random choices
 
  `make randconfig`

* **print floating numbers** with zero at the beginnig
 
  `printf "%1.4f\n" $(echo 2/3 | bc -l)`

* **scp** with port
  
  `scp -P $PORT $FILE $REMOTE_MACHINE:/$DIRECTORY`

* **random password** from CLI

  * `apg`
  * `date | md5sum | cut -c 1-12`
  * `cat /dev/urandom | base64 | tr -d '[^:alnum:]' | cut -c1-10 | head -1`
  
* output of **grep into vim**

  * `vim $(grep -l PATTERN *)`
  * `vim -o $(grep -l PATTERN *) - open more than one file`
  * `vim -p $(grep -l PATTERN *) - open more than one file but in tabs`

* **bash function** cs

  `function cs () { cd $1; ls -alF; }`
  
* list of **empty subdirectories** of current directory

  `find . -empty -type d`

* mysql import with **progress bar**

  `pv dump.sql | mysql -u root -p`

* **calendar** with specified month

  `cal -m 6; cal -m June`

* **find ID** of all SELECT SQL queries

  `mysql -e "show full processlist\G;" | grep -B 7 'SELECT' | grep Id`

* **resize** logival volume

  `lvresize -L 10000M /dev/vg0/some-disk; resize2fs /dev/vg0/some-disk; e2fsck -y /dev/vg0/some-disk`

* **extract** xz files

  `tar Jfvx file`

* **disable bash autocompletion** for a specific command only

  `complete -W "" rm (insert into /root/.bashrc)`

* **grep process** fast

  `pgrep -fl some_process`

* **subtract a small file** from a bigger file
  
  `grep -vf filesmall filebig`

* dmesg with **time**

  `dmesg -T`

* run "some_command" (or any pipeline) and send the **output into vim**

  `some_command | vim -`

* **swap usage** per process

  `for file in /proc/*/status ; do awk '/VmSwap|Name/{printf $2 " " $3}END{ print ""}' $file; done | sort -k 2 -n -r | less`

* **print N line** in file

  `sed -n 'Np' file`

* **ssh for loop** sequence

  `for I in $(seq 1 10); do echo -e machine${I}.somewhere.com; ssh user@machine${I}.somewhere.com "ls /var/tmp/file"; done`

* bash **sequence**

  `for I in $(seq 1 10); do echo $I; done`
