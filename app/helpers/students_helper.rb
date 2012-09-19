module StudentsHelper

  def print_tasks(student)
    output = ''
    ['dorms', 'payment', 'laundry', 'library', 'laundryBack', 'libraryBack'].each do |t|
      output += print_task(student, t) unless (t == 'laundryBack' and !student.track['laundry']) or
          (t == 'libraryBack' and !student.track['library'])
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
