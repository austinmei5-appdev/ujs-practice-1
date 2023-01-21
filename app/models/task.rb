# == Schema Information
#
# Table name: tasks
#
#  id         :bigint           not null, primary key
#  status     :string           default("Not yet started")
#  text       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  owner_id   :bigint           not null
#
# Indexes
#
#  index_tasks_on_owner_id  (owner_id)
#
# Foreign Keys
#
#  fk_rails_...  (owner_id => users.id)
#
class Task < ApplicationRecord
  belongs_to :owner, class_name: "User"

  enum status: { not_yet_started: "Not yet started", in_progress: "In progress", completed: "Completed" }

  validates 
end
