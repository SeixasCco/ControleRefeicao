class CreateRefeicos < ActiveRecord::Migration[7.0]
  def change
    create_table :refeicos do |t|
      t.string :refeicao
      t.date :data

      t.timestamps
    end
  end
end
