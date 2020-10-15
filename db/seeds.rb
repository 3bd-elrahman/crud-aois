# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Student.create(first_name:'abdo',last_name:'mahamed',gender:'male',mobile:'01149261423');
Student.create(first_name:'rahma',last_name:'mahamed',gender:'female',mobile:'01149261422');
Student.create(first_name:'bakr',last_name:'abdelrahamn',gender:'male',mobile:'01049261423');

StudentClass.create(class_name:'chemistry',capacity: 100,class_gender: 'male')