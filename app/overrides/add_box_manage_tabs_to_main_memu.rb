Deface::Override.new(:virtual_path => 'spree/admin/shared/_tabs',
  :name => 'add_menu_tabs',
  :insert_before => "erb[silent]:contains('Spree::Admin::ReportsController')",
  :text => "
    <% if can? :admin, Spree::Order %>
      <%= tab *Spree::BackendConfiguration::ORDER_TABS, icon: 'shopping-cart' %>
    <% end %>
  ")