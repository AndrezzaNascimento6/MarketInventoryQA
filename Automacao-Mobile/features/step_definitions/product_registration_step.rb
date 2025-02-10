Given('I am registering a product in inventory') do
  @home = HomeScreen.new
  @home.add_product
end

When('I enter valid product informations') do
  @register_product = RegistrationScreen.new
  @register_product.register_product(
    DATABASE[:new_product][:code],
    DATABASE[:new_product][:description],
    DATABASE[:new_product][:packing],
    DATABASE[:new_product][:amount],
    DATABASE[:new_product][:unit],
    DATABASE[:new_product][:lot]
  )
end

Then('product will be registred successfully') do
  assert = RegistrationAssert.new
  assert.check_registration
end

Given('I already registered a product') do
  @home = HomeScreen.new
  @register_product = RegistrationScreen.new
  @home.add_product
  @register_product.register_product(
    DATABASE[:new_product][:code],
    DATABASE[:new_product][:description],
    DATABASE[:new_product][:packing],
    DATABASE[:new_product][:amount],
    DATABASE[:new_product][:unit],
    DATABASE[:new_product][:lot]
  )
end

When('I edit this product informations') do
  @home.change_product
  @register_product.register_product(
    DATABASE[:edit_product][:code],
    DATABASE[:edit_product][:description],
    DATABASE[:edit_product][:packing],
    DATABASE[:edit_product][:amount],
    DATABASE[:edit_product][:unit],
    DATABASE[:edit_product][:lot]
  )
end

Then('product will be edited successfully') do
  assert = RegistrationAssert.new
  assert.check_editation
end

Given('I have a product amount {string} in inventory') do |amount|
  @home = HomeScreen.new
  @register_product = RegistrationScreen.new
  @home.add_product
  @register_product.register_product(
    DATABASE[:new_product][:code],
    DATABASE[:new_product][:description],
    DATABASE[:new_product][:packing],
    amount,
    DATABASE[:new_product][:unit],
    DATABASE[:new_product][:lot]
  )
end

When('I decrease this product amount {string}') do |decreaseValue|
  @home.decrease_item
  @register_product.decrease_amount(decreaseValue)
end

Then('product amount will be decreased {string} successfully') do |newValue|
  assert = RegistrationAssert.new
  assert.check_amount(newValue)
end

Given('I have a product in inventory') do
  @home = HomeScreen.new
  @register_product = RegistrationScreen.new
  @home.add_product
  @register_product.register_product(
    DATABASE[:new_product][:code],
    DATABASE[:new_product][:description],
    DATABASE[:new_product][:packing],
    DATABASE[:new_product][:amount],
    DATABASE[:new_product][:unit],
    DATABASE[:new_product][:lot]
  )
end

When('I delete this product') do
  @home.delete_product
end

Then('product will be deleted successfully') do
  assert = RegistrationAssert.new
  assert.check_deletion
end
