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

  def update
    @student = Student.find(params[:id])
    @track = @student.track

    if @track.update_attributes(params[:track])
      respond_with_bip(@track)
    else
      respond_with_bip(@track)
    end
  end
end
