class GameSerializer
    def initialize(obj)
        @game = obj
    end

    def to_serialized_json
        format = {
            include: { 
                characters: {
                    except: [:created_at, :updated_at]
                }
            }
        }
        @game.to_json(format)
    end

end