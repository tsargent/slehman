class AddPdfToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :pdf, :string
  end
end
