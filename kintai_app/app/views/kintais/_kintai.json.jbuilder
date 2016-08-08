json.extract! kintai, :id, :date, :start_time, :finish_time, :resarch_time, :purpose, :reflection, :created_at, :updated_at
json.url kintai_url(kintai, format: :json)