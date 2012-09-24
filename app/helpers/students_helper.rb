module StudentsHelper
  def ldate(dt, hash = {})
    dt ? l(dt, hash) : nil
  end

  def printAge (student)
    if !student.birthday
      ""
    else
      now = Time.now.utc.to_date
      age = now.year - student.birthday.year - (student.birthday.to_date.change(:year => now.year) > now ? 1 : 0)
      "("+t("students.age")+": "+age.to_s+")"
    end
end


  def print_tasks(student)
    output = ''
    ['dorms', 'payment', 'laundry', 'library', 'laundry_back', 'library_back'].each do |t|
      output += print_task(student, t) unless (t == 'laundry_back' and !student.track['laundry']) or
          (t == 'library_back' and !student.track['library'])
    end
    output.html_safe
  end

  def print_task(student, task)
    if student.track[task]
      css_class = 'success'
      icon = 'icon-remove'
    else
      css_class = ''
      icon = 'icon-ok'
    end

    render partial: 'students/task', locals: {
        student: student,
        task: task,
        css_class: css_class,
        icon: icon
    }
  end

end
