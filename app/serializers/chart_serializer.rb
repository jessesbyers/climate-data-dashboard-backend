class ChartSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :data_url, :notices, :wonders
end
