root = exports ? @

root.Students = new Mongo.Collection 'Students'

Meteor.methods {
  'remove-all-students': -> Students.remove {} 
  'add-fake-students': -> for i in [1 to 108]
    Students.insert student-id: i, name: i
}

Router.route '/', ->

Meteor.startup -> if Meteor.is-client
  $ 'form[data-parsley-validate]' .parsley!