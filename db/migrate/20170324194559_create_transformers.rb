class CreateTransformers < ActiveRecord::Migration[5.0]
  def change
    create_table :transformers do |t|
    	t.string :input
    	t.string :result
    end
  end
end
