# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#Categories seed
Category.create(name: "pmlang", alias: "Programming Languages", status: true)
Category.create(name: "opn", alias: "Opinion", status: true)
Category.create(name: "frmwks", alias: "Frameworks", status: true)
Category.create(name: "dvops", alias: "DevOps", status: true)
Category.create(name: "opsys", alias: "Operating Systems", status: true)

