<script src="http://checkout.stripe.com/checkout.js" class="stripe-button"
data-key="<%= Rails.configuration.stripe[:publishable_key] %>" data-description="Order #<%= @order.id %>" data-amount="<%=(@order.grand_total.to_f.round(2) *100) %>"></script>
