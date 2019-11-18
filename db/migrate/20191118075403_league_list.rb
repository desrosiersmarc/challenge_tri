class LeagueList < ActiveRecord::Migration[6.0]
  def change
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
  end
end
