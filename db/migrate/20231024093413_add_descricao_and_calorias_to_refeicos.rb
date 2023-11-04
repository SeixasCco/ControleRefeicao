class AddDescricaoAndCaloriasToRefeicos < ActiveRecord::Migration[7.0]
  def change
    add_column :refeicos, :descricao, :string
    add_column :refeicos, :calorias, :integer
  end
end
