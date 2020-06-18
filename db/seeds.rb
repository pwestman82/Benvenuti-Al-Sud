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
		description: "Calabrian Hot Spreadable Salame, Red Onions, Calabrian Pecorino, Mozzarella Bufala, tomato sauce, basil, Terre Francescane Organic EVOO",
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
		description: "Wide flat pasta, spiced wild boar ragu",
		price: 11.99,
	},
	{ 
		name: "Ravoli Quattro Formaggi",
		description: "Four cheese ravioli, pine nuts, butter, Marsala glaze, parmesan curls",
		price: 8.99,
		tag: "vegetarian",
	},
 	{ 
		name: "Gnocchi",
		description: "Potato dumplings, cherry tomatoes, garlic, spinach, Gorgonzola DOP",
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
		description: "Mixture of tomatoes, garlic, romano cheese, basil and extra virgin olive oil served over toasted Italian bread",
		price: 6.99,
		tag: "vegetarian",
	},
	{ 
		name: "Calamari", 
		description: "Breaded in our special seasoned batter and pan fried in vegetable oil",
		price: 9.99,
	},
 	{ 
		name: "Sauteed Spinach",
		description: "Sautéed in garlic and oil",
		tag: "vegan",
	}
]
    
antipasti.each do |antipasto_attr| 
	antipasto = Product.new(antipasto_attr)
	antipasto.category = "antipasto"
	antipasto.save!
end

puts "Done ✅"