# coding: utf-8

class StudentsController < ApplicationController
  # GET /students
  # GET /students.json
  def index
    @students = Student.search(params[:search], params[:country_search], params[:status_search])
    @active = "by_country" if   params[:country_search]
    @active = "by_status" if params[:status_search]


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @students }
    end
  end

  # GET /students/1
  # GET /students/1.json
  def show
    @student = Student.find(params[:id])

    _load_constants

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @student }
    end
  end

  # GET /students/new
  # GET /students/new.json
  def new
    @student = Student.new
    @title = "יצירת סטודנט חדש"
   @student.requests.build


    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @student }
    end
  end

  # GET /students/1/edit
  def edit
    @student = Student.find(params[:id])
    @title = " עריכת כרטיס סטודנט: #{@student.name} "
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(params[:student])
    @track = Track.new(params[:track])
    @student.track=@track
      respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render json: @student, status: :created, location: @student }
      else
        format.html { render action: "new" }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /students/1
  # PUT /students/1.json
    def update
    @student = Student.find(params[:id])

    respond_to do |format|
      if @student.update_attributes(params[:student])
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student = Student.find(params[:id])
    @student.destroy

    respond_to do |format|
      format.html { redirect_to students_path }
      format.json { head :no_content }
    end
  end

  def updateRequest
    @request = Request.find(params[:id])
    if @request.update_attributes(params[:request])
      respond_with_bip(@request)
    else
      respond_with_bip(@request)
    end
  end

  private

  def _load_constants
    request_statuses = {
        pending: {
            id: 1,
            title: t('requests.statuses.pending')
        },
        treatment: {
            id: 2,
            title: t('requests.statuses.treatment')
        },
        approved: {
            id: 3,
            title: t('requests.statuses.approved')
        },
        declined: {
            id: 4,
            title: t('requests.statuses.declined')
        }
    }
    @request_statuses_array = request_statuses.values.map { |a| a.values }
  end
end
