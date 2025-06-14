class UsersConsumer < ApplicationConsumer
  def consume
    messages.each do |message|
      Rails.logger.info "Received message from Kafka: #{message.payload}"
    end
  end
end 