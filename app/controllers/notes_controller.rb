class NotesController < ApplicationController
  before_action :set_note, only: [:show, :update, :destroy]

  def index
    @notes = Note.all
    render json: @notes
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
    render json: @note
  end

  private
  def set_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.required(:note).permit(
    :title,
    :body,
    :created_at,
    :updated_at
    )
  end

end
