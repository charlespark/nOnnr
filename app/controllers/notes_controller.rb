class NotesController < ApplicationController
  before_action :set_note, only: [:show, :edit, :update, :destroy]

  # GET /notes
  # GET /notes.json
  def index
    @notes = Note.all
  end

  # GET /notes/1
  # GET /notes/1.json
  def show
  end

  # GET /notes/new
  def new
    @note = Note.new

    @response = HTTParty.get('http://api.wordnik.com:80/v4/words.json/randomWord?hasDictionaryDef=true&minCorpusCount=0&maxCorpusCount=-1&minDictionaryCount=1&maxDictionaryCount=-1&minLength=5&maxLength=-1&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5')
    
     # puts response.body, response.code, response.message, response.headers.inspect
    @returned_json = JSON.parse(@response.body)
    @word = @returned_json["word"]

    @url = 'http://api.wordnik.com:80/v4/word.json/' + @word + '/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5'
    @gather = HTTParty.get(@url)
    @spitback = JSON.parse(@gather.body)
    @meaning = @spitback[0]["text"]

    @local_time = Time.zone.now.in_time_zone("Pacific Time (US & Canada)").strftime("%A, %B %-d, %Y %l:%M %p %Z")
  end

  # GET /notes/1/edit
  def edit
  end

  # POST /notes
  # POST /notes.json
  def create
    @note = Note.new(note_params)

    @response = HTTParty.get('http://api.wordnik.com:80/v4/words.json/randomWord?hasDictionaryDef=true&minCorpusCount=0&maxCorpusCount=-1&minDictionaryCount=1&maxDictionaryCount=-1&minLength=5&maxLength=-1&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5')
    
     # puts response.body, response.code, response.message, response.headers.inspect
    @returned_json = JSON.parse(@response.body)
    @word = @returned_json["word"]

    @url = 'http://api.wordnik.com:80/v4/word.json/' + @word + '/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5'
    @gather = HTTParty.get(@url)
    @spitback = JSON.parse(@gather.body)
    @meaning = @spitback[0]["text"]

    @local_time = Time.zone.now.in_time_zone("Pacific Time (US & Canada)").strftime("%A, %B %-d, %Y %l:%M %p %Z")

    respond_to do |format|
      if @note.save
        format.html { redirect_to @note, notice: 'Your rnnOn was successfully created.' }
        format.json { render :show, status: :created, location: @note }
      else
        format.html { render :new }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notes/1
  # PATCH/PUT /notes/1.json
  def update
    respond_to do |format|
      if @note.update(note_params)
        format.html { redirect_to @note, notice: 'Your rnnOn was successfully updated.' }
        format.json { render :show, status: :ok, location: @note }
      else
        format.html { render :edit }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notes/1
  # DELETE /notes/1.json
  def destroy
    @note.destroy
    respond_to do |format|
      format.html { redirect_to notes_url, notice: 'Your rnnOn successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note
      @note = Note.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def note_params
      params.require(:note).permit(:word, :meaning, :content, :local_time)
    end
end
