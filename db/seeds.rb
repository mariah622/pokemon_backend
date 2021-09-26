# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pikachu = Pokemon.create(name: "Pikachu", move: "Thunderbolt", ability: "static" );
bulbasaur = Pokemon.create(name: "Bulbasaur", move: "Razorleaf", ability: "overgrow");

Comment.create(title: "Pikachu is the goat", description: "Pikachu is the best pokemon", pokemon: pikachu);
Comment.create(title: "Best electric pokemon? Pikachu!", description: "Pikachu is the goat of Pokemon. No other Pokemon compares", pokemon: pikachu);