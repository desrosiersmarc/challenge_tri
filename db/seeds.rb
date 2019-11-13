# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

print 'Create leagues'
League.create([{name: "AUVERGNE-RHÔNE-ALPES"},
{name: "BOURGOGNE-FRANCHE-COMTÉ"},
{name: "BRETAGNE"},
{name: "CENTRE VAL DE LOIRE"},
{name: "CORSE"},
{name: "GRAND-EST"},
{name: "GUADELOUPE"},
{name: "HAUTS DE FRANCE"},
{name: "ILE-DE-FRANCE"},
{name: "MARTINIQUE"},
{name: "NORMANDIE"},
{name: "NOUVELLE-AQUITAINE"},
{name: "NOUVELLE CALÉDONIE"},
{name: "OCCITANIE"},
{name: "PAYS DE LA LOIRE"},
{name: "PROVENCE-ALPES-CÔTE D'AZUR"},
{name: "RÉUNION"}])
