class WonderSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :votes, :chart
end
