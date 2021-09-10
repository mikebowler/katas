#
class PickLanguagePage
  include PageObject

  divs :language, class: "display-name"
  button :next, text: 'next'

  def pick_language language
    language_element = nil
    wait_until do 
      language_element = language_elements.find do |item|
        item.text.strip == language
      end
      language_element
    end

    # if language_element.nil?
    #   all_languages = language_elements.collect{|item|item.text.strip}
    #   raise "Couldn't find #{language.inspect} in #{all_languages.inspect}"
    # end

    puts "Found #{language_element.inspect}"
    language_element.scroll
    language_element.when_present.click

    next_element.click
  end

end