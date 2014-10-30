class Note
  include Mongoid::Document
  include Mongoid::Timestamps
  field :word
  field :meaning
  field :content
  field :local_time
  field :_id, type: String, default: ->{ word.to_s.parameterize }
  validates_presence_of :content
end
