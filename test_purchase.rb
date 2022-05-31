# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'lib/customer'
require_relative 'lib/store'

describe Customer do
  describe 'purchase operation' do
    it 'succeeds when has enough inventory' do
      store = Store.new
      store.addInventory(:shampoo, 10)
      customer = Customer.new

      success = customer.purchase(store, :shampoo, 5)

      _(success).must_equal true
      _(store.getInventory(:shampoo)).must_equal 5
    end

    it 'fails when has NOT enough inventory' do
      store = Store.new
      store.addInventory(:shampoo, 10)
      customer = Customer.new

      success = customer.purchase(store, :shampoo, 15)

      _(success).must_equal false
      _(store.getInventory(:shampoo)).must_equal 10
    end
  end
end
