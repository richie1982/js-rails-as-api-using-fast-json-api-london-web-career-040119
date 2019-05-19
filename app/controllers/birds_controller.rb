class BirdsController < ApplicationController
    def index
        @birds = Bird.all
        render json: BirdSerializer.new(@birds).serializable_hash
    end
end
