class CreateAnagramas < ActiveRecord::Migration
  def change
    create_table :anagramas do |t|
      t.string :word1
      t.string :word2
      t.boolean :check

      t.timestamps
    end
  end
end
