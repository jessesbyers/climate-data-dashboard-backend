class NoticeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :votes, :chart
end
