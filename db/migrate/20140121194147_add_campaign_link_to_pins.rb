class AddCampaignLinkToPins < ActiveRecord::Migration
  def change
    add_column :pins, :campaign_link, :string
  end
end
