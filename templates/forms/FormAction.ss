<% if UseButtonTag %>
	<button id="$ID" class="action" type="button" title="$Title" value="$Title" name="$Name"<% if TabIndex %> $TabIndex<% end_if %><% if isDisabled %> disabled<% end_if %>></button>
<% else %>
	<input id="$ID" class="action" type="submit" title="$Title" value="$Title" name="$Name"<% if TabIndex %> $TabIndex<% end_if %><% if isDisabled %> disabled<% end_if %>>
<% end_if %>