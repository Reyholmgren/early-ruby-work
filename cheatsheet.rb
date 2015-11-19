# Objectives:
#  Create a menu that takes in a user input
# 1. Command Line 2. IDE 3. Search 4. Quit
# Based on user choice go to a 2nd menu
# When command line is chosen display a list of command line options
# Also supply a way for the user to get back to the main menu
# When a command line menu option is selected display the man pages for that option
# When the IDE menu is chosen list shortcut options
# When a shortcut is chosen display more information about the shortcut
# Also provide a way for the user to get back to the main menu
# BONUS:
#   Allow the user to search.  When a command is entered into the search show the man pages for that command.



# Objectives:
#  Create a menu that takes in a user input
# 1. Command Line 2. IDE 3. Search 4. Quit
require 'pry'



def main_menu
  puts "Please choose an option:
        \n 1. Command line
        \n 2. Vim
        \n 3. Search
        \n 4. Quit" 
  choice = gets.to_i
  case choice
  when 1
    command_line_menu
  when 2
    vim_menu

  when 3
    search_menu

  when 4
    exit 0
  else
    puts "Please enter a valid choice"
    main_menu
  end
end

def command_line_menu
  puts "Please choose an option:
        \n 0. Main Menu
        \n 1. copy - cp
        \n 2. move - mv
        \n 3. make directory - mkdir"

  choice = gets.to_i
  case choice
  when 0
    main_menu
  when 1
    puts `man cp`
    command_line_menu
  when 2
    puts `man mv`
    command_line_menu
  when 3
    puts `man mkdir`
    command_line_menu
  else
    puts "Please enter a valid choice"
  end
  command_line_menu
end

def vim_menu
  puts "Please choose an option:
        \n 0. Main Menu
        \n 1. Learn some Vim"

  choice = gets.to_i
  case choice
  when 0
    main_menu
  when 1
    puts `man vim`
    vim_menu
  else
    puts "Please enter a valid choice"
  end
  vim_menu
end

def search_menu
  puts "Please choose an option:
        \n 0. Main Menu
        \n 1. search a term"

  choice = gets.to_i
  case choice
  when 0
    main_menu
  when 1
    puts "What term would you like to search?"
    search = gets.strip

    puts `man #{search}`
    search_menu
  else
    puts "Please enter a valid choice"
  end
  search_menu
end

main_menu

# puts "Welcome! Choose an option:"

# main_menu

# user_choice = gets.to_i

# puts "You chose #{user_choice}"



# def vim_menu
#   puts "0. Main Menu
#         \n 1. Learn some Vim
# end

# # def search_menu
# #   puts "0. Main Menu
# #         \n 1. Search the manual for a term"
# # end

# # vim_choice = 'place holder'   
# # command_line_choice = 'place holder' 

# while user_choice != 4

#   if user_choice == 1
#     command_line_menu
#     command_line_choice = gets.to_i

#     while command_line_choice != 0

#       if command_line_choice == 1
#         puts `man cp`
#         puts "Please make a selection"
#         command_line_menu
#         command_line_choice = gets.to_i


#       elsif command_line_choice == 2
#         puts `man mv`
#         puts "Please make a selection"
#         command_line_menu
#         command_line_choice = gets.to_i

#       elsif command_line_choice == 3
#         puts `man mkdir`
#         puts "Please make a selection"
#         command_line_menu
#         command_line_choice = gets.to_i

#       end

#     end


#   else user_choice == 2
#     vim_menu
#     vim_choice = gets.to_i    

#     while ide_choice != 0

#       if vim_choice == 1
#         puts `man vim`
#         vim_menu
#         vim_choice = gets.to.i
          
#       end

#     end

#   end

# end





#   elsif user_choice == 2
#     vim_menu
#   elsif user_choice == 3
#     search_menu
#   else
#     puts "Goodbye!"
    
#   end
# end
