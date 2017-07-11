require 'rails_helper'

RSpec.describe Product, type: :model do
  it 'should save if all values present' do
    cat1 = Category.find_or_create_by! name: 'Apparel'
    @product = Product.new category: cat1, name: 'product', price: 200, quantity: 500
    @product.save!
  end
  it 'should not save if name is absent' do
    cat1 = Category.find_or_create_by! name: 'Apparel'
    @product = Product.new category: cat1, name: '', price: 200, quantity: 500
    expect @product.save!.to_be false
    end
end
