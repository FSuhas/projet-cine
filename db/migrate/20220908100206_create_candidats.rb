class CreateCandidats < ActiveRecord::Migration[7.0]
  def change
    create_table :candidats do |t|
      t.string :nom
      t.string :prenom
      t.date :date_de_naissance
      t.string :telephone
      t.string :adresse
      t.text :bio
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
