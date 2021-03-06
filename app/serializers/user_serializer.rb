class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :username, :password
  
  def full_name
    object.name 
  end

  def created_at
    object.created_at.strftime('%B %d, %Y')
  end
  
end
