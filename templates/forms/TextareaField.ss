<% if isReadonly %>
	<span id="$ID" class="textarea readonly"><% if Value %>$Value<% else %><em>(<% _t('NONE', 'none') %>)</em><% end_if %></span>
<% else %>
	<textarea id="$ID" class="textarea" name="$Name" rows="$Rows" cols="$Cols"<% if isDisabled %> disabled<% end_if %>></textarea>
<% end_if %>