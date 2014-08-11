json.array!(@contacts) do |contact|
  json.extract! contact, :id, :user_id, :name, :email, :website, :twitter_handle, :contacted, :industry_influencer, :power_user, :comments
  json.url contact_url(contact, format: :json)
end
