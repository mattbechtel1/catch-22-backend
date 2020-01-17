class GameSerializer
    def initialize(obj)
        @game = obj
    end

    def to_serialized_json
        format = {
            include: { 
                partners: {
                    except: [:created_at, :updated_at]
                }
            }
        }
        @game.to_json(format)
    end

end