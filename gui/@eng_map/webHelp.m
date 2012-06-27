function webHelp(em)
% fires your web browser to the eng_map documentation
% usage: webHelp(eng_map)
web(['file:///',which('eng_map.html')],'-browser')