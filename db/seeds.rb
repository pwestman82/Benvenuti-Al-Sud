puts "Destroying all existing records..."
Item.destroy_all
Product.destroy_all
Order.destroy_all
User.destroy_all

puts "Creating pizzas..."
pizzas = [
	{ 
		name: "Margherita", 
		description: "Mozzarella Bufala, San Marzano Tomatoes, Basil, Terre Francescane Organic EVOO", 
		price: 10.99,
		tag: "vegetarian",
	},
	{ 
		name: "Vecchia Roma",
		description: "Guanciale, Pecorino Gran Cru, Mozzarella Bufala, San Marzano Tomatoes, Terre Francescane Organic EVOO",
		price: 14.99,
	},
 	{ 
		name: "Bologna",
		description: "Parma Ham, Parmegiano Reggiano, Mozzarella, Datterino Tomatoes, Basil, Terre Francescane Organic EVOO",
		price: 12.99,
	},
	{ name: "Toscana",
		description: "Wild Mushroom, Mozzarella Bufala, Basil, Terre Francescane Organic EVOO",
		price: 11.99,
		tag: "vegetarian",
	},
  { 
		name: "Marinara",
		description: "San Marzano Tomatoes, Garlic, Oregano, Terre Francescane Organic EVOO",
		price: 11.99,
		tag: "vegan",
	},
	{ name: "Carbonara",
		description: "Pancetta, Tomato, Egg, Mozzarella Bufala, Black Pepper",
		price: 13.99,
	},
  { 
		name: "Quattro Formaggi",
		description: "Mozzarella Bufala, Gorgonzola, Emmental, Parmigiano Reggiano",
		price: 19.99,
		tag: "vegetarian",
	},
  { 
		name: "Nduja",
		description: "Calabrian Hot Spreadable Salame, Red Onions, Calabrian Pecorino, Mozzarella Bufala, Tomato Sauce, Basil, Terre Francescane Organic EVOO",
		price: 12.99,
	}
]

pizzas.each do |pizza_attr| 
	pizza = Product.new(pizza_attr)
	pizza.category = "pizza"
	pizza.save!
end

puts "Creating pastas..."
pastas = [
	{ 
		name: "Pappardelle con Cinghiale",
		description: "Wide Flat Pasta, Spiced Wild Boar Ragù",
		price: 11.99,
	},
	{ 
		name: "Ravoli Quattro Formaggi",
		description: "Four Cheese Ravioli, Pine Nuts, Butter, Marsala Glaze, Parmesan Curls",
		price: 8.99,
		tag: "vegetarian",
	},
 	{ 
		name: "Gnocchi",
		description: "Potato Dumplings, Cherry Tomatoes, Garlic, Spinach, Gorgonzola DOP",
		price: 9.99, 
		tag: "vegetarian",
	}
]
    
pastas.each do |pasta_attr| 
	pasta = Product.new(pasta_attr)
	pasta.category = "pasta"
	pasta.save!
end

puts "Creating antipasti..."
antipasti = [
	{ 
		name: "Bruschetta",
		description: "Mixture of Tomatoes, Garlic, Romano Cheese, Basil and Extra Virgin Olive Oil served over Toasted Italian Bread",
		price: 6.99,
		tag: "vegetarian",
	},
	{ 
		name: "Calamari", 
		description: "Breaded in our Special Seasoned Butter and Pan Fried in Vegetable Oil",
		price: 9.99,
	},
 	{ 
		name: "Sauteed Spinach",
		description: "Sautéed in Garlic and Oil",
		tag: "vegan",
	}
]
    
antipasti.each do |antipasto_attr| 
	antipasto = Product.new(antipasto_attr)
	antipasto.category = "antipasto"
	antipasto.save!
end

puts "Done ✅"