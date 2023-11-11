class StudentsController < ApplicationController
  before_action :set_link
def create
    @student = @link.students.new(student_params)
    respond_to do |format|
        if @student.save
            format.html { redirect_to @link, notice: 'Student was successfully created.' }
        end
    end
end
private
def set_link
    @link = Link.find(params[:link_id])
end
def student_params
    params.require(:student).permit(:studentid, :name)
end

def destroy
  @student.destroy

  respond_to do |format|
    format.html { redirect_to students_url, notice: "Student was successfully destroyed." }
    format.json { head :no_content }
  end
end


def edit
  @student = Link.find(params[:id])
    if @link.user != current_user
      flash[:alert] = "You don't have permission to edit this link."
      redirect_to @link
    end
end

end
