Template['add_student_form'].events {
  'click .button.clear': (ev, tpl)!-> $ 'input' .val ''
  'click .button.submit': (ev, tpl)-> 
    ev.prevent-default!
    student-id = ($ 'input[name=studentId]').val!
    name = ($ 'input[name=name]').val!
    student = Students.findOne $or: [{student-id}, {name}]
    if student then alert "Can't add student: #{student-id}, #{name} anymore, cause (s)he's already added." else
      Students.insert student = {student-id, name}
      Session.set 'current-student', student
}