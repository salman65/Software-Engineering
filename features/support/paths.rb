# TL;DR: YOU SHOULD DELETE THIS FILE
#
# This file is used by web_steps.rb, which you should also delete
#
# You have been warned
module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #

  def path_to(webpage)
    
    case webpage
    
    when /^Sign In$/
     new_session_path
    when /^signin$/
     new_session_path
    when /^Home$/
      home_path
    when /^home$/
      home_path  
    when /^signup$/
     users_new_path
    when /^About Us$/
      aboutus_path
    when /^aboutus$/
      aboutus_path
    when /^Contact Us$/
      contact_path
    when /^contact$/
      contact_path
    when /^Order$/
      new_session_path
    when /^users\/1$/
      user_path(id: 1)
    when /^Zakir Tikka$/
      User.create!({:name => 'zain', :email => 'zain@gmail.com', :password => 'zainbinary'})
      zakirs_index_path(id: 1)
    when /^"Zakir Tikka"$/
      User.create!({:name => 'zain', :email => 'zain@gmail.com', :password => 'zainbinary'})
      zakirs_index_path(id: 1)
    when /^"Review"$/
      User.create!({:name => 'zain', :email => 'zain@gmail.com', :password => 'zainbinary'})
      new_review_path(id: 1)
    when /^reviews\/1$/
      review_path(id: 1)
    when /^View Reviews$/
      review_path(id: 1)
    when /^"users\/1"$/
      User.create!({:name => 'zain', :email => 'zain@gmail.com', :password => 'zainbinary'})
      user_path(id: 1)
    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
