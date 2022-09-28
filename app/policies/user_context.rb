class UserContext
  attr_accessor :id, :cookies
  
  def initialize(user, cookies)
    @id = user&.id
    @cookies = cookies
  end
end
