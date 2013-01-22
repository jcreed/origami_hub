require "prawn"
class OrigamisController < ApplicationController
  # GET /origamis
  # GET /origamis.json
  force_ssl :only => :download_pdf

  def index
    @origamis = Origami.all
    #@origamis = Origami.find_all_by_name "Heavens Rainbow", :order => 'name'
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @origamis }
    end
  end

  # GET /origamis/1
  # GET /origamis/1.json
  def show
    @origami = Origami.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @origami }
      format.pdf
    end
  end

  # GET /origamis/new
  # GET /origamis/new.json
  def new
    @origami = Origami.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @origami }
    end
  end

  # GET /origamis/1/edit
  def edit
    @origami = Origami.find(params[:id])
  end

  # POST /origamis
  # POST /origamis.json
  def create
    @origami = Origami.new(params[:origami])

    respond_to do |format|
      if @origami.save
        format.html { redirect_to @origami, notice: 'Origami was successfully created.' }
        format.json { render json: @origami, status: :created, location: @origami }
      else
        format.html { render action: "new" }
        format.json { render json: @origami.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /origamis/1
  # PUT /origamis/1.json
  def update
    @origami = Origami.find(params[:id])

    respond_to do |format|
      if @origami.update_attributes(params[:origami])
        format.html { redirect_to @origami, notice: 'Origami was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @origami.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /origamis/1
  # DELETE /origamis/1.json
  def destroy
    @origami = Origami.find(params[:id])
    @origami.destroy
    flash[:notice] = "You have successfully deleted the origami"
    respond_to do |format|
      format.html { redirect_to origamis_url }
      format.json { head :no_content }
    end
  end

  def download_pdf
    origami = Origami.find(2)
    send_data generate_pdf(origami).render,
          :filename => "#{origami.name}.pdf",
          :type => "application/pdf"
  end

  private
  def generate_pdf(origami)
    Prawn::Document.new do 
      text origami.name, :align => :center, :size => 64, :styles => [:bold, :italic]
      text "Artist: #{origami.artist}"
      text "PDF", :size => 28
    end
  end
end
