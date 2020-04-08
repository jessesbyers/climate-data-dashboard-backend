class ChartSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :data_url, :screenshot_url, :notices, :wonders
end
