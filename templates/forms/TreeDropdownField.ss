<div id="TreeDropdownField_$ID" class="TreeDropdownField single$extraClass" href="$Link">
	<input id="$ID" type="hidden" name="$Name" value="$Value">
	<% if ShowSearch %>
		<input class="items" value="<% _t('CHOOSEORTYPESEARCH', '(Choose or type search)') %>">
	<% else %>
		<span class="items">$Title</span>
	<% end_if %>
	<a href="#" title="open" class="editLink">&nbsp;</a>
</div>