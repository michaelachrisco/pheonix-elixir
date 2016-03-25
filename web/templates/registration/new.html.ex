<h3>Registration</h3>
<%= form_for @changeset, registration_path(@conn, :create), fn f -> %>
  <%= if f.errors != [] do %>
    <div class="alert alert-danger">
      <p>Oops, something went wrong! Please check the errors below:</p>
      <ul>
        <%= for {attr, message} <- f.errors do %>
          <li><%= humanize(attr) %> <%= message %></li>
        <% end %>
      </ul>
    </div>
  <% end %>

  <div class="form-group">
    <label>Username</label>
    <%= text_input f, :username, class: "form-control" %>
  </div>

  <div class="form-group">
    <label>Password</label>
    <%= password_input f, :password, class: "form-control" %>
  </div>

  <div class="form-group">
    <label>Password Confirmation</label>
    <%= password_input f, :password_confirmation, class: "form-control" %>
  </div>

  <div class="form-group">
    <%= submit "Register", class: "btn btn-primary" %>
    <%#= link("Login", to: session_path(@conn, :new), class: "btn btn-success pull-right") %>
  </div>
<% end %>
