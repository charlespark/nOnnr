class Note
  include Mongoid::Document
  include Mongoid::Timestamps
  field :word
  field :meaning
  field :content
  field :local_time
  validates_presence_of :content
end
