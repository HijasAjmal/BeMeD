class CreateWebsiteDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :website_details do |t|

      t.timestamps
    end
  end
end
