class UserSerializer

  def initialize(obj)
    @user = obj
  end

  def to_serialized_json
    format = {
        include: { 
            games: {
                only: [:id, :name, :flown]
            }
        },
        except: [:password_digest]
    }
    @user.as_json(format)
  end

end
