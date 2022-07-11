<?php
session_start();
require("../database.php");
include("header.php");
error_reporting(1);
?>
<link href="../quiz.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<?php
extract($_POST);

echo "<BR>";
if (!isset($_SESSION[alogin]))
{
	echo "<br><h2><div  class=head1>You are not Logged On Please Login to Access this Page</div></h2>";
	echo "<a href=index.php><h3 align=center>Click Here for Login</h3></a>";
	exit();
}
echo "<h2 class='text-center bg-primary'>Add What Most Children Do At This Age</h2>";
if($_POST[submit]=='Save' || strlen($_POST['testid'])>0 )
{
extract($_POST);
mysqli_query($con,"insert into mst_question(test_id,que_desc,ans1,ans2,ans3,ans4,true_ans) values ('$testid','$addque','$ans1','$ans2','$ans3','$ans4','$anstrue')",$cn) or die(mysqli_error());
echo "<p align=center>List Added Successfully.</p>";
unset($_POST);
}
?>
//<SCRIPT LANGUAGE="JavaScript">
function check() {
mt=document.form1.addque.value;
if (mt.length<1) {
alert("Please Enter Age");
document.form1.addque.focus();
return false;
}
a1=document.form1.ans1.value;
if(a1.length<1) {
alert("Please Enter Answer1");
document.form1.ans1.focus();
return false;
}
a2=document.form1.ans2.value;
if(a1.length<1) {
alert("Please Enter Answer2");
document.form1.ans2.focus();
return false;
}
a3=document.form1.ans3.value;
if(a3.length<1) {
alert("Please Enter Answer3");
document.form1.ans3.focus();
return false;
}
a4=document.form1.ans4.value;
if(a4.length<1) {
alert("Please Enter Answer4");
document.form1.ans4.focus();
return false;
}
at=document.form1.anstrue.value;
if(at.length<1) {
alert("Please Enter True Answer");
document.form1.anstrue.focus();
return false;
}
return true;
}
</script>

<div style="margin:auto;width:90%;height:500px;box-shadow:2px 1px 2px 2px #CCCCCC;text-align:left">
<form name="form1" method="post" onSubmit="return check();">
  <table class="table table-striped">
    <form id="form">
  <p id=form-prompt>Social/Emotional</p><br>
 <p id=form-prompt>Calms down when spoken to or picked up *</p><br>
  <input type="radio" id="True" name="age" value="True">
  <label for="child">Yes</label><br>
  <input type="radio" id="False" name="age" value="False">
  <label for="false">No</label><br>
  <input type="radio" id="Notsure" name="age" value="Notsure">
  <label for="senior">Not Sure</label>
  <p id=form-prompt>Looks at your face *</p><br>
  <input type="radio" id="True" name="age" value="True">
  <label for="child">Yes</label><br>
  <input type="radio" id="False" name="age" value="False">
  <label for="false">No</label><br>
  <input type="radio" id="Notsure" name="age" value="Notsure">
  <label for="senior">Not Sure</label>
   <p id=form-prompt>Seems happy to see you when you walk up to her *</p><br>
  <input type="radio" id="True" name="age" value="True">
  <label for="child">Yes</label><br>
  <input type="radio" id="False" name="age" value="False">
  <label for="false">No</label><br>
  <input type="radio" id="Notsure" name="age" value="Notsure">
  <label for="senior">Not Sure</label>
  <p id=form-prompt>Language/Communication Milestones</p><br>
 <p id=form-prompt>Makes sounds other than crying *</p><br>
  <input type="radio" id="True" name="age" value="True">
  <label for="child">Yes</label><br>
  <input type="radio" id="False" name="age" value="False">
  <label for="false">No</label><br>
  <input type="radio" id="Notsure" name="age" value="Notsure">
  <label for="senior">Not Sure</label>
 <p id=form-prompt>Reacts to loud sounds *</p><br>
  <input type="radio" id="True" name="age" value="True">
  <label for="child">Yes</label><br>
  <input type="radio" id="False" name="age" value="False">
  <label for="false">No</label><br>
  <input type="radio" id="Notsure" name="age" value="Notsure">
  <label for="senior">Not Sure</label>
  
  <div><button type="submit">Submit</button></div>
</form>
	<tr>
      <td width="24%" height="32"><div align="left"><strong>Select Milestone </strong></div></td>
      <td width="1%" height="5">  
      <td width="75%" height="32"><select class="form-control" name="testid" id="testid">
<?php
$rs=mysqli_query($con,"Select * from mst_test order by test_name",$cn);
	  while($row=mysqli_fetch_array($rs))
{
if($row[0]==$testid)
{
echo "<option value='$row[0]' selected>$row[2]</option>";
}
else
{
echo "<option value='$row[0]'>$row[2]</option>";
}
}
?>
   //   </select>
        
    <tr>
        <td height="26"><div align="left"><strong> Enter Age </strong></div></td>
        <td>&nbsp;</td>
	    <td><textarea class="form-control" name="addque" cols="60" rows="2" id="addque"></textarea></td>
    </tr>
    <p> Social/Emotional<p/> <br/>
      
    </tr>
    <tr>
      <td height="26"><strong>Enter Skill 1 </strong></td>
      <td>&nbsp;</td>
      <td><input class="form-control" name="ans2" type="text" id="ans2" size="85" maxlength="85"></td>
    </tr>
    <tr>
      <td height="26"><strong>Enter Skill 2 </strong></td>
      <td>&nbsp;</td>
      <td><input class="form-control" name="ans3" type="text" id="ans3" size="85" maxlength="85"></td>
    </tr>
    <tr>
      <td height="26"><strong>Enter Skill 3</strong></td>
      <td>&nbsp;</td>
      <td><input class="form-control" name="ans4" type="text" id="ans4" size="85" maxlength="85"></td>
    </tr>
    <tr>
      <td height="26"><strong>Enter Skill 4 </strong></td>
      <td>&nbsp;</td>
      <td><input class="form-control" name="anstrue" type="text" id="anstrue" size="50" maxlength="50"></td>
    </tr>
    <tr>
      <td height="26"></td>
      <td>&nbsp;</td>
      <td><input class="btn btn-primary" type="submit" name="submit" value="Add" ></td>
    </tr>
  </table>
</form>
<p>&nbsp; </p>
</div>