class AddContentToFeedback < ActiveRecord::Migration
  def change
    create_table :feedbacks
    add_column :feedbacks, :content, :text
    add_column :feedbacks, :from, :string
  end
end
