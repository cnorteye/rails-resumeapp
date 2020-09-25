class Resume < ApplicationRecord
  has_one_attached :attachment
  validates :name, presence: true
  validates :attachment, blob: { content_type: ['application/msword', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'application/pdf'], size_range: 0..5.megabytes }
end
