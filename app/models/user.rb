class User < ApplicationRecord
  has_attachment :photo_avatar
  has_attachments :picture_name, maximum: 10
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :send_welcome_email

  has_many :musics
  has_many :messages
  has_many :pictures
  has_many :transports



  NATIONALITY = ["française", "valencià", "Martiniquais"]

  private

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end

end
