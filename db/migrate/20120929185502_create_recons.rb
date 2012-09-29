class CreateRecons < ActiveRecord::Migration
  def change
    create_table :recons do |t|

      t.string :company_name
      t.string :idea
      t.string :audience
      t.string :technology

      t.timestamps
    end
  end
end
