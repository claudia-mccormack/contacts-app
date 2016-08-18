<h2>5-Day Forecast</h2>
<% @weather.take(5).each do |forecast| %>
  <ul>
    <li><%= forecast["day"] %>, <%= forecast["date"] %></li>
    <li>High: <%= forecast["high"] %></li>
    <li>Low: <%= forecast["low"] %></li>
    <li>Weather: <%= forecast["text"] %></li>
  </ul>
<% end %>

<%= form_tag('/blah', method: 'get') do %>
  <%= text_field_tag(:city) %>
  <%= text_field_tag(:state) %>
  <%= submit_tag("What's your weather?") %>
<% end %>
