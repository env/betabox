class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :subdomain
      t.string :name
      
      t.timestamps
    end
  end
end
