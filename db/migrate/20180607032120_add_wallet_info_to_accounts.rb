class AddWalletInfoToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :wallet, :decimal, precision: 32, scale: 16
    add_column :accounts, :collected_at, :datetime
  end
end
