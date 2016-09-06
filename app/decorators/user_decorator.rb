class UserDecorator < Draper::Decorator
  delegate_all

  def get_picture(picture_url)
    if picture_url
      picture_url
    else
      'avatar.jpg'
    end
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end