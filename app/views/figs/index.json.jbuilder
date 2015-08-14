json.array!(@figs) do |fig|
  json.extract! fig, :id, :url, :user_id
  json.url fig_url(fig, format: :json)
end
