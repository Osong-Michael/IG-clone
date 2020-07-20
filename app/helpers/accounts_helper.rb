module AccountsHelper
  def profile_picture(user, width = 50)
    default_img = 'https://res.cloudinary.com/oa7/image/upload/v1595283275/default_profile_pics/download_vg4tp3.png'
    image_path = user.image.present? ? user.image.url : default_img
    image_tag(image_path, width: width, class: 'profile-pic') 
  end

  def actual_user?(account_id)
    account_signed_in? && current_account.id == account_id
  end
  
end


