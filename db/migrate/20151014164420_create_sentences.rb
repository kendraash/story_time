class CreateSentences < ActiveRecord::Migration
  def change
    create_table :sentences do |t|
      t.column :user, :string
      t.column :body, :string
      t.column :story_id, :integer

      t.timestamps
    end
  end
end
