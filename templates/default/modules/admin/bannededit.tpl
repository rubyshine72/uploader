{include file="default/modules/admin/adminmenu.tpl"}

<form action="{$script}" method="post">
<input type="hidden" name="action" value="{$action}">
<input type="hidden" name="step" value="{$step}">
<input type="hidden" name="editbannedid" value="{$banned.id}">
<table border="0">
<tr><td>{tr}IP{/tr}:</td><td><input type="text" name="editbannedip" value="{$banned.ip}"></td></tr>
<tr><td>{tr}Access{/tr}:</td><td>
<select name="editbannedaccess">
{foreach from=$access item=a key=k}
<option value="{$k}" {if $k==$banned.access}selected{/if}>{$a}</option>
{/foreach}</td></tr>
<tr><td>{tr}Priority{/tr}:</td><td><input type="text" name="editbannedpriority" value="{$banned.priority}"></td></tr>
<tr><td colspan="2" align=right><input type="submit" class="submit" value="{tr}Confirm{/tr}"></td></tr>
</table>
</form>