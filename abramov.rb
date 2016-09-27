require_relative 'abramov_module'

include Abramov

def task
    puts '=' * 25 + ' Abramov tasks ' + '=' * 25
    print 'There\'s 3 available tasks: 224, 325 and 561. Choose one: => '
    choice = gets.chomp
    header = print('-' * 25 + " Tasks #{choice}" + '-' * 25)
    case choice
    when '224'
        puts "#{header} \n" + 'Дано натуральне число n. Отримати всі його натуральні дільники'
        nat_num
        ex224
    when '325'
        puts "#{header} \n" + 'Дано натуральне число n. Отримати всі прості дільники цього числа.'
        nat_num
        ex325
    when '561'
        puts "#{header} \n" + 'Дано натуральне число n. Серед чисел (1,..,n) знайти всі такі, запис
         яких співпадає з останніми цифрами запису їх квадрату (наприклад,
         6**2 = 36, 25**2= 625 і т.д.).
         Automorphic numbers 1, 5, 6, 25, 76, 376, 625, 9376..'
        nat_num
        ex561
    else
        puts "\n Sorry, there is not task number #{choice}"
    end
end

def continue?
    print "Would you like to continue [Y/N]?\n=> "
    answer = gets.chomp
    answer.casecmp('y').zero?
end

loop do
    task
    break unless continue?
end
