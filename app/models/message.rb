class Message < ApplicationRecord
	validates :chat, presence: true
	after_create_commit { MessageBroadcastJob.perform_later self }
	belongs_to :room
	belongs_to :user
end
