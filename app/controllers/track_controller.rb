class TrackController < ApplicationController
  respond_to :html, :json

  def change
    @student = Student.find(params[:student])
    track = @student.track
    task = params[:task]

    if !track[task]
      track.update_attribute(task, true)
    else
      track.update_attribute(task, false)
    end
    redirect_to student_path(@student)
  end

  def changeDorms
    @student = Student.find(params[:student])
    @track = @student.track
    if !@track.dorms
      @track.update_attribute('dorms', true)
    else
      @track.update_attribute('dorms', false)
    end
    redirect_to student_path(@student)
  end

  def changePayment
    @student = Student.find(params[:student])
    @track = @student.track
    if !@track.payment
      @track.update_attribute('payment', true)
    else
      @track.update_attribute('payment', false)
    end
    redirect_to student_path(@student)
  end

  def changeLaundry
    @student = Student.find(params[:student])
    @track = @student.track
    if !@track.laundry
      @track.update_attribute('laundry', true)
    else
      @track.update_attribute('laundry', false)
    end
    redirect_to student_path(@student)
  end

  def changeLibrary
    @student = Student.find(params[:student])
    @track = @student.track
    if !@track.library
      @track.update_attribute('library', true)
    else
      @track.update_attribute('library', false)
    end
    redirect_to student_path(@student)
  end

  def changeLaundryBack
    @student = Student.find(params[:student])
    @track = @student.track
    if !@track.laundryBack
      @track.update_attribute('laundryBack', true)
    else
      @track.update_attribute('laundryBack', false)
    end
    redirect_to student_path(@student)
  end

  def changeLibraryBack
    @student = Student.find(params[:student])
    @track = @student.track
    if !@track.libraryBack
      @track.update_attribute('libraryBack', true)
    else
      @track.update_attribute('libraryBack', false)
    end
    redirect_to student_path(@student)
  end

  def update
    redirect_to students_path
    @track = Track.find(params[:id])
    @track.update_attributes(params[:track])
    respond_with_bip @track
  end

end
