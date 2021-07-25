echo "\n\tdate command::\n"
date
echo "\n\twho  command::\n"
who
echo "\n\twho | wc command::\n"
who | wc
echo "\n\tdate | wc command::\n"
date | wc
echo "\n\t 1. date ; who | wc command::"
date ; who | wc
echo "\n==>Semicolon separates commands so here we are getting two (date and who | wc )  commands . Different than pipe sign combine two commands where wc returns three parameters line(s),word(s),characters(s) of only who command.
so,Pipe takes precedence over the semicolon
– Semicolon separates two commands
– Pipe connects two commands into one \n"
echo "\n\t 2.(  date ; who )| wc command::\n"
(date ; who ) | wc
echo "\n==>The precedence can be adjusted by using the parenthesis
where wc returns three parameters line(s),word(s),characters(s) of both command(date and who)"
