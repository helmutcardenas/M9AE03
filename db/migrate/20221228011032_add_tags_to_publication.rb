class AddTagsToPublication < ActiveRecord::Migration[7.0]
  def change
    add_column :publications, tags, :string, array: true, default
  end
end
