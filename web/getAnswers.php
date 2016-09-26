
<?php

if((isset($_POST['UIP'])) && !empty($_POST['UIP']))
{
    $query = $_POST['UIP'];
}
echo '<pre>';
echo '<hr />';
// Outputs all the result of shellcommand "ls", and returns
// the last output line into $last_line. Stores the return value
// of the shell command in $retval.
$last_line = system('sh core_engine.sh '.$query, $retval);
echo '<hr />';
// Printing additional info
echo '
</pre>'
?>

