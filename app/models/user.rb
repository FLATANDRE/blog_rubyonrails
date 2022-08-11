class User
    include ActiveModel::API
    attr_accessor :username, :email, :password, :roles
end