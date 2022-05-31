class Store
  def initialize
    @inventory = {}
  end

  def addInventory(product, amount)
    @inventory[product] = amount
  end

  def removeFromInventory(product, amount)
    @inventory[product] -= amount
  end

  def getInventory(product)
    @inventory[product]
  end

  def enough?(product, amount)
    @inventory[product] >= amount
  end
end
