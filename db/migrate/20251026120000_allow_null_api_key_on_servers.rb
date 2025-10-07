class AllowNullApiKeyOnServers < ActiveRecord::Migration[8.0]
  def change
    change_column_null :servers, :api_key_id, true
  end
end
