class AddUrlTextToQuotes < ActiveRecord::Migration
  def change
    add_column :quotes, :url_text, :string
  end
end
