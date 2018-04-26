class RenameAutorIdColumToBookAuthor < ActiveRecord::Migration[5.1]
  def change
    rename_column :book_authors, :autor_id, :author_id
  end
end
