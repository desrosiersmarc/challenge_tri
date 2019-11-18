class FormatList < ActiveRecord::Migration[6.0]
  def change
    Format.create([
      {id:1, name: "XS"},
      {id:2, name: "S"},
      {id:3, name: "M"},
      {id:4, name: "L"},
      {id:5, name: "Half"},
      {id:6, name: "XL"},
      {id:7, name: "Full"},
    ])
  end
end
