# backup-mysql
Shell Script to Backup MySQL Databases on Webserver Daily 
This Script Performs a full backup of the MySQL Databases on a Server. 
Be sure to edit the configuration options at the beginning of the script to match your environment prior to executing.
The end result will be a TAR archive of each website with the name '(current-datestamp)-$db.sql'. 
For Backing up your Website Files please see our backup-www script.

# Usage:

1. Pull up a terminal or SSH into the target server.

2. Logon as root

<pre>sudo -i</pre>

3. Download the installer script.

<pre>wget https://raw.github.com/YlanNaly/dump-mysql-database-between-two-server/main/dump_from_another_server.sh</pre>

4. Make the script executable

<pre>chmod +x dump_from_another_server.sh</pre>

5. Run the script.

<pre>./dump_from_another_server.sh</pre>

6. Setup a cronjob to run the script daily/weekly if you choose.
<pre>
5 1   * * * /etc/dump_from_another_server.sh >/dev/null 2>&1
</pre>
