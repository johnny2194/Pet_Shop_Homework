# def pet_shop_name(name)
#   return "Camelot of Pets"
# end

def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, value)
 pet_shop[:admin][:total_cash] += value
end 

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, num)
  pet_shop[:admin][:pets_sold] += num
end

def stock_count(pet_shop)
  return pet_shop[:pets].length
end

def pets_by_breed(pet_shop, breed)
 return pet_shop[:pets].select {|pet| pet[:breed] == breed}
end

def find_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets] do
    if pet[:name] == pet_name
     return pet
    end
  end
  return nil
end

# def remove_pet_by_name(pet_shop, pet_name)
#   pet_shop[:pets].delete_if {|shop, name| name = pet_name}
# end
# passes test but don't think is right

def remove_pet_by_name(pet_shop, pet_to_remove)
 target_of_pet_removed = find_pet_by_name(pet_shop, pet_to_remove)
 pet_shop[:pets].delete(target_of_pet_removed)
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << {name: new_pet}
end


def customer_pet_count(customers)
 return customers[:pets].count
end

def add_pet_to_customer(customers, new_pet)
  customers[:pets] << new_pet
end

# def customer_can_afford_pet(customers, new_pet)
#   for customer in customers
#     if customer[:cash] < 500
#       return false 
#     end 
#   end
# end
 
