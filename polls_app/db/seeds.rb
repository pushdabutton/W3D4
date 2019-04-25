# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Poll.destroy_all
Question.destroy_all
AnswerChoice.destroy_all
Response.destroy_all

john = User.create!(username: 'john')
adam = User.create!(username: 'adam')
josh = User.create!(username: 'josh')

john_poll = john.authored_polls.create!(title: 'john poll title')
adam_poll = adam.authored_polls.create!(title: 'adam poll title')
josh_poll = josh.authored_polls.create!(title: 'josh poll title')

john_question1 = john_poll.questions.create!(text: 'john question 1')
john_question2 = john_poll.questions.create!(text: 'john question 2')
adam_question1 = adam_poll.questions.create!(text: 'adam question 1')
adam_question2 = adam_poll.questions.create!(text: 'adam question 2')
josh_question1 = josh_poll.questions.create!(text: 'josh question 1')
josh_question2 = josh_poll.questions.create!(text: 'josh question 2')

john_answer_choice1 = john_question1.answer_choices.create!(text: 'choice 1')
john_answer_choice2 = john_question1.answer_choices.create!(text: 'choice 2')
john_answer_choice5 = john_question2.answer_choices.create!(text: 'choice 1')
john_answer_choice6 = john_question2.answer_choices.create!(text: 'choice 2')
adam_answer_choice1 = adam_question1.answer_choices.create!(text: 'choice 1')
adam_answer_choice2 = adam_question1.answer_choices.create!(text: 'choice 2')
adam_answer_choice5 = adam_question2.answer_choices.create!(text: 'choice 1')
adam_answer_choice6 = adam_question2.answer_choices.create!(text: 'choice 2')


john_response = Response.create!(user_id: john.id, answer_choice_id: adam_answer_choice1.id)
adam_response = Response.create!(user_id: adam.id, answer_choice_id: adam_answer_choice1.id)
josh_response = Response.create!(user_id: josh.id, answer_choice_id: adam_answer_choice1.id)