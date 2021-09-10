#
class IndexPage
  include PageObject

  page_url 'http://cyber-dojo.org/'

  button :new_default_session, class: 'group'
end

class PickCreateOrEnterPage
  include PageObject

  button :enter, text: 'enter an existing exercise'
  button :create, text: 'create a new group exercise'
end

class PickProblemPage
  include PageObject

  button :skip, text: 'skip'
end

class PickProblemPage
  include PageObject

  button :skip, text: 'skip'
end

class ConfirmPage
  include PageObject

  button :confirm, text: 'confirm'
end

class EnterExercisePage
  include PageObject

  button :enter, text: "Enter group exercise as new avatar"
end

class Loader
  include PageObject::PageFactory

  def run
    @browser = Watir::Browser.new :safari
    visit IndexPage
    on(IndexPage).new_default_session
    on(PickCreateOrEnterPage).create_element.when_present.click
    on(PickProblemPage).skip_element.when_present.click

    on(PickLanguagePage).pick_language "Java, JUnit"
    on(ConfirmPage).confirm_element.when_present.click
    on(EnterExercisePage).enter_element.when_present.click
    sleep 10
  end
end
