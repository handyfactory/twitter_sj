DataMapper::setup(:default, "sqlite://#{Dir.pwd}/login.db")

class User
    include DataMapper::Resource
    property :id, Serial
    property :email, String
    property :password, String
    property :nickname, String
    property :created_at, DateTime
    def User.total
        User.all.size
    end
end

class Tweet
    include DataMapper::Resource
    property :id, Serial
    property :email, String
    property :nickname, String
    property :content, Text
    property :created_at, DateTime
end


DataMapper.finalize

Tweet.auto_upgrade!
User.auto_upgrade!