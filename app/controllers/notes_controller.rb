class NotesController < ApplicationController
  before_action :set_note, only: [:show, :update, :destroy]

  def index
    render json: Note.all
  end

  def create
    @note = Note.new(note_params)
    @note.save
    render json: @note
  end

  def show
    render json: @note
  end

  def update
    @note.update(note_params)
    @note.save
    render json: @note
  end

  def destroy
    @note.destroy
    render json: {}
  end

  private
  def set_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.required(:note).permit(
    :title,
    :body
    )
  end

end
