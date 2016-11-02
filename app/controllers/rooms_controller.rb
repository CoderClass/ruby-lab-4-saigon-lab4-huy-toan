class RoomsController < ApplicationController
    def index
        @rooms = Room.all
    end

    def create
        new_room = Room.create(room_param)
        redirect_to rooms_path
    end

    private

    def room_param
        params.require(:room).permit(:name)
    end
end
