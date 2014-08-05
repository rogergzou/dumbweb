<?php 
//set variables to access mysql database
$mysqlDatabaseName ='rzou_dreading_cs50_finalproject';
$mysqlUserName ='therogerzou';
$mysqlPassword ='dingdingditch';
$mysqlHostName ='rzou-dreading-cs50-finalproject.cs50lyfe.info';
$mysqlExportPath = 'cs50lyfe.info/finalproject/cs50finance.sql';

//Export the database and output the status to the page
$command='mysqldump --opt -h' .$mysqlHostName .' -u' .$mysqlUserName .' -p' .$mysqlPassword .' ' .$mysqlDatabaseName .' > ~/' .$mysqlExportPath;
$output=array();
$worked;
//execute
exec($command,$output,$worked);

//send messsage based off if mysqldump worked
switch($worked){
case 0:
//actually no say anything b/c decided to put on index page, happens every time homepage accessed so always auto update
//echo 'Database <b>' .$mysqlDatabaseName .'</b> successfully exported to <b>~/' .$mysqlExportPath .'</b>';
break;
case 1:
echo 'There was a warning during the export of <b>' .$mysqlDatabaseName .'</b> to <b>~/' .$mysqlExportPath .'</b>';
break;
case 2:
echo 'There was an error during export. Please check your values:<br/><br/><table><tr><td>MySQL Database Name:</td><td><b>' .$mysqlDatabaseName .'</b></td></tr><tr><td>MySQL User Name:</td><td><b>' .$mysqlUserName .'</b></td></tr><tr><td>MySQL Password:</td><td><b>NOTSHOWN</b></td></tr><tr><td>MySQL Host Name:</td><td><b>' .$mysqlHostName .'</b></td></tr></table>';
break;
}

//ignore plz
/* <script type="text/javascript" src="https://www.dropbox.com/static/api/1/dropins.js" id="dropboxjs" data-app-key="7bp6sdyopdxcq8k"></script>
<a href="https://dl.dropboxusercontent.com/s/deroi5nwm6u7gdf/advice.png" class="dropbox-saver"></a>
*/


?>
