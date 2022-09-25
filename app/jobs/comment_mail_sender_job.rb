class CommentMailSenderJob < ApplicationJob
  queue_as :default

  def perform(event, comment)
    all_emails = (event.subscriptions.map(&:user_email) + [event.user.email] - [comment.user&.email]).uniq
    all_emails.each { |mail| EventMailer.comment(comment, mail).deliver_now }
  end
end
