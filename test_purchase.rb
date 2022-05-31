# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'lib/customer'
require_relative 'lib/store'

describe Customer do
  describe 'purchase operation' do
    it 'succeeds when has enough inventory' do
      store = Minitest::Mock.new
      store.expect(:enough?, true, [:shampoo, 5])
      store.expect(:removeFromInventory, nil, [:shampoo, 5])
      customer = Customer.new

      success = customer.purchase(store, :shampoo, 5)

      _(success).must_equal true
      store.verify
    end

    it 'fails when has NOT enough inventory' do
      store = Minitest::Mock.new
      store.expect(:enough?, false, [:shampoo, 15])
      customer = Customer.new

      success = customer.purchase(store, :shampoo, 15)

      _(success).must_equal false
    end
  end
end
