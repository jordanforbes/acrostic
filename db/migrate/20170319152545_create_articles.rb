class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
    	t.string :word
    	t.string :length

      t.timestamps
    end
  end
end
