json.array!(@leave_applies) do |leave_apply|
  json.extract! leave_apply, :id
  json.url leave_apply_url(leave_apply, format: :json)
end
