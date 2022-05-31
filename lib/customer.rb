class Customer
  def purchase(store, product, amount)
    return false unless store.enough? product, amount

    store.removeFromInventory(product, amount)
    true
  end
end
