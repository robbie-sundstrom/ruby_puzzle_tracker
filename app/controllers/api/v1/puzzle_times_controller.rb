class Api::V1::PuzzleTimesController < ApplicationController
    before_action :set_puzzle_times, only: %i[ show update destroy ]
  
    # GET /puzzle_times
    def index
      args = {
        'puzzle.title' => params[:puzzle_title].presence,
        user_id: params[:user_id].presence,
        'puzzle.piece_count': params[:piece_count].presence
      }.compact
  
      @puzzle_time = PuzzleTime.all
      @puzzle_time._select!("puzzle_times.*, puzzles.title as puzzle_title, users.name as puzzler_name")
      @puzzle_time.joins!(:puzzles, :users)
      @puzzle_time.where!(args.compact) if args.compact.present?
  
      render json: @puzzle_time
    end
  
    
    # GET /puzzle_times/1
    def show
      render json: @puzzle_time
    end
  
    # POST /puzzle_times
    def create
      @puzzle_time = PuzzleTime.new(puzzle_params)
  
      if @puzzle_time.save
        render json: @puzzle_time, status: :created, location: @puzzle_time
      else
        render json: @puzzle_time.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /puzzle_times/1
    def update
      if @puzzle_time.update(puzzle_params)
        render json: @puzzle_time
      else
        render json: @puzzle_time.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /puzzle_times/1
    def destroy
      @puzzle_time.destroy!
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_puzzle_time
        @puzzle_time = PuzzleTime.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def puzzle_time_params
        params.require(:puzzle_time).permit(:time)
      end
  end
  