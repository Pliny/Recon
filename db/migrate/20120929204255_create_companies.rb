class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|

      t.string :name
      t.string :permalink
      t.string :category_code

      t.timestamps
    end
  end
end
