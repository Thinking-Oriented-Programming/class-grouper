root = exports ? @

root.Students = new Mongo.Collection 'Students'

Meteor.methods {
  'remove-all-students': -> Students.remove {} 
}

Router.route '/', ->
