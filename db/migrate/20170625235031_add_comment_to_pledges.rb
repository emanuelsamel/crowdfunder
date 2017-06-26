class AddCommentToPledges < ActiveRecord::Migration[5.1]
  def change
    add_column :pledges, :comment, :string
  end
end
